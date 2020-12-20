import React from 'react';
import { Layout, Menu } from 'antd';
import history from '../../services/history';
import {
  UserOutlined,
  KeyOutlined,
  BarChartOutlined,
} from '@ant-design/icons';
import { enquireScreen } from 'enquire-js';
import ProfileRouter from './ProfileRouter';

let isMobile: any;
enquireScreen((b: any) => {
  isMobile = b;
});

const { Sider } = Layout;
const { SubMenu } = Menu;
class Profile extends React.Component {
  state = {
    collapsed: false,
    isMobile
  };

  componentDidMount() {
    enquireScreen((b: any) => {
      this.setState({
        isMobile: !!b,
      });
    });
  }

  onCollapse = (collapsed: any) => {
    console.log(collapsed);
    this.setState({ collapsed });
  };
  render() {
    const { collapsed } = this.state;
    return (
      <Layout style={{ minHeight: '100vh' }}>
        <Sider theme='light' width={250} collapsible collapsed={collapsed} onCollapse={this.onCollapse}>
          <div className="avt">
          </div>
          <Menu theme="light" defaultSelectedKeys={['1']} mode="inline">
            <Menu.Item key="1" icon={<UserOutlined />} onClick={() => history.push("/profile/user-info")}>
              Chỉnh sửa thông tin cá nhân
            </Menu.Item>
            <SubMenu key="sub" icon={<BarChartOutlined />} title="Thống kê bài đăng">
              <Menu.Item key="2" onClick={() => history.push("/profile/approving-post")}>Đang chờ duyệt</Menu.Item>
              <Menu.Item key="sub1">Đang hoạt động
              </Menu.Item>
              <Menu.Item key="sub2">Đã hết hạn
              </Menu.Item>
            </SubMenu>
            <Menu.Item key="3" icon={<KeyOutlined />}>
              Đổi mật khẩu
            </Menu.Item>
          </Menu>
        </Sider>
        <Layout className="site-layout mt-4">
          <ProfileRouter />
        </Layout>
      </Layout>
    );
  }
}

export default Profile;