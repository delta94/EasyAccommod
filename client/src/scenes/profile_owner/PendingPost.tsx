import {
  DatePicker,
  Modal,
  Table,
  Button,
  Divider,
  Row,
  Space,
  Tag,
} from 'antd';
import history from '../../services/history';
import React, { useEffect, useState } from 'react';
import {
  DeleteOutlined,
  EditTwoTone,
  ExclamationCircleOutlined,
  InfoCircleOutlined,
} from '@ant-design/icons';
import Search from 'antd/lib/input/Search';
import { faPlus } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { deletePost, getPendingPosts } from '../../services/post';
import { useMediaQuery } from 'react-responsive';
import moment from 'moment';

export const PendingPost: React.FC = () => {
  const isMobile = useMediaQuery({ query: '(max-width: 1080px)' });
  const [pendingPost, setPendingPost] = useState([]);
  const [fromDate, setFromDate] = useState<any>();
  const [toDate, setToDate] = useState<any>();

  const onSearch = (value: string) => {
    if (!(value.length > 0)) {
      getPendingPosts(setPendingPost);
    } else {
      getPendingPosts(setPendingPost, {
        title: value,
        dateFrom: fromDate,
        dateTo: toDate,
      });
    }
  };

  useEffect(() => {
    getPendingPosts(setPendingPost);
  }, []);

  const columns = [
    {
      title: 'Tiêu đề bài viết',
      dataIndex: 'title',
      key: 'title',
      render: (text: any) => <>{text}</>,
    },
    {
      title: 'Diện tích',
      dataIndex: 'roomArea',
      key: 'roomArea',
      render: (text: any) => <>{text} m&sup2;</>,
    },
    {
      title: 'Địa chỉ',
      dataIndex: 'address',
      key: 'address',
    },
    {
      title: 'Giá thuê',
      dataIndex: 'roomPrice',
      key: 'roomPrice',
      render: (text: any) => (
        <>{text.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')} VNĐ</>
      ),
    },
    {
      title: 'Trạng thái',
      dataIndex: '',
      key: 'roomPrice',
      render: (tag: any) => (
        <>
          <Tag color={'geekblue'} key={tag}>
            {'Đang chờ phê duyệt'}
          </Tag>
        </>
      ),
    },
    {
      title: 'Thao tác',
      dataIndex: 'id',
      key: 'action',
      render: (id: any, record: any) => (
        <Row justify='center'>
          <Space size='large'>
            <InfoCircleOutlined
              onClick={() => {
                history.push('/post/detail/' + id);
              }}
            />
            <EditTwoTone
              onClick={() => {
                history.push('/post/edit/' + id);
              }}
            />
            <DeleteOutlined
              style={{ color: 'red' }}
              onClick={() => confirmDelete(id)}
            />
          </Space>
        </Row>
      ),
    },
  ];

  const confirmDelete = (id: any) => {
    Modal.confirm({
      title: 'Xóa bài viết',
      icon: <ExclamationCircleOutlined />,
      content: 'Bạn sẽ xóa bài viết?',
      okText: 'OK',
      cancelText: 'Không',
      onOk: () => {
        deletePost(id, () => {
          getPendingPosts(setPendingPost);
        });
      },
    });
  };
  return (
    <div className='pending-post'>
      <div className=''>
        <>
          <div className='row'>
            <Button
              className='ml-3'
              type='primary'
              onClick={() => history.push('/post/create')}
            >
              <span style={{ marginRight: 10, fontWeight: 500, fontSize: 15 }}>
                Tạo bài viết mới
              </span>
              <FontAwesomeIcon icon={faPlus} />
            </Button>
            <div className={'ml-auto ' + (!isMobile ? 'd-flex' : '')}>
              <DatePicker
                placeholder='Từ'
                style={{ marginRight: 20, minWidth: 200 }}
                onChange={(date) => setToDate(moment(date).format('L'))}
              />
              <DatePicker
                placeholder='Đến'
                style={{ marginRight: 20, minWidth: 200 }}
                onChange={(date) => setFromDate(moment(date).format('L'))}
              />

              <Search
                style={{}}
                placeholder='Tìm kiếm'
                allowClear
                enterButton='Tìm'
                size='large'
                onSearch={onSearch}
              />
            </div>
          </div>
        </>
      </div>
      <Divider
        children='Các bài viết đang chờ phê duyệt'
        orientation='left'
        style={{ marginTop: 20, marginBottom: 20 }}
      />
      <Table
        bordered
        columns={columns}
        dataSource={pendingPost}
        pagination={{ position: ['bottomCenter'], pageSize: 6 }}
      ></Table>
    </div>
  );
};
