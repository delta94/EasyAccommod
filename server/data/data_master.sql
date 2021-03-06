USE [EasyAccommodDb]
GO
SET IDENTITY_INSERT [dbo].[MstApartmentType] ON 

INSERT [dbo].[MstApartmentType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Phòng trọ', N'Phòng trọ')
INSERT [dbo].[MstApartmentType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Chung cư mini', N'Chung cư')
INSERT [dbo].[MstApartmentType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (3, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Nhà nguyên căn', N'Nhà nguyên căn')
INSERT [dbo].[MstApartmentType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (5, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Chung cư nguyên căn', N'Chung cư nguyên căn')
SET IDENTITY_INSERT [dbo].[MstApartmentType] OFF
GO
SET IDENTITY_INSERT [dbo].[MstBathroomType] ON 

INSERT [dbo].[MstBathroomType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Khép kín có nóng lạnh', N'Mới')
INSERT [dbo].[MstBathroomType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Khép kín không nóng lạnh', N'Mới')
INSERT [dbo].[MstBathroomType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (3, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Chung có nóng lạnh', N'Cũ')
INSERT [dbo].[MstBathroomType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (4, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Chung không nóng lạnh', N'Cũ')
SET IDENTITY_INSERT [dbo].[MstBathroomType] OFF
GO
SET IDENTITY_INSERT [dbo].[MstElectricityPriceUnit] ON 

INSERT [dbo].[MstElectricityPriceUnit] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Tháng', N'Số tiền cố định trả theo tháng')
INSERT [dbo].[MstElectricityPriceUnit] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Số công tơ', N'Số tiền trả cho mỗi số công tơ nước')
SET IDENTITY_INSERT [dbo].[MstElectricityPriceUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[MstKitchenType] ON 

INSERT [dbo].[MstKitchenType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Khu bếp riêng', N'Loại 1')
INSERT [dbo].[MstKitchenType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Khu bếp chung', N'Loại 2')
INSERT [dbo].[MstKitchenType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (3, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Không nấu ăn', N'Loại 3')
SET IDENTITY_INSERT [dbo].[MstKitchenType] OFF
GO
SET IDENTITY_INSERT [dbo].[MstSleTimeShown] ON 

INSERT [dbo].[MstSleTimeShown] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description], [PriceShown]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'1 Ngày', N'Ngày', 100000)
INSERT [dbo].[MstSleTimeShown] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description], [PriceShown]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'7 Ngày', N'Ngày', 600000)
INSERT [dbo].[MstSleTimeShown] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description], [PriceShown]) VALUES (4, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'2 Tuần', N'Tuần', 1000000)
INSERT [dbo].[MstSleTimeShown] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description], [PriceShown]) VALUES (5, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'1 Tháng', N'Tháng', 1500000)
SET IDENTITY_INSERT [dbo].[MstSleTimeShown] OFF
GO
SET IDENTITY_INSERT [dbo].[MstTypePublicPlaceType] ON 

INSERT [dbo].[MstTypePublicPlaceType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Đại học/ Cao đẳng', N'Học tập')
INSERT [dbo].[MstTypePublicPlaceType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Trung tâm thể thao', N'Địa điểm công cộng')
INSERT [dbo].[MstTypePublicPlaceType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (4, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Công viên', N'Địa điểm công cộng')
INSERT [dbo].[MstTypePublicPlaceType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (5, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'UBND Quận/ Phường', N'Địa điểm hành chính')
INSERT [dbo].[MstTypePublicPlaceType] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (7, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Khác', N'Khác')
SET IDENTITY_INSERT [dbo].[MstTypePublicPlaceType] OFF
GO
SET IDENTITY_INSERT [dbo].[MstUnitPrice] ON 

INSERT [dbo].[MstUnitPrice] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Tháng', N'Tháng')
INSERT [dbo].[MstUnitPrice] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Quý', N'3 Tháng')
INSERT [dbo].[MstUnitPrice] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (3, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Năm', N'12 Tháng')
SET IDENTITY_INSERT [dbo].[MstUnitPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[MstWaterPriceUnit] ON 

INSERT [dbo].[MstWaterPriceUnit] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (1, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Tháng', N'Số tiền cố định trả theo tháng')
INSERT [dbo].[MstWaterPriceUnit] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [Name], [Description]) VALUES (2, CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, N'Số công tơ', N'Số tiền trả cho mỗi số công tơ nước')
SET IDENTITY_INSERT [dbo].[MstWaterPriceUnit] OFF
GO
