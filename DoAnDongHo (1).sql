USE [DoAnDongHo]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/14/2024 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[email] [nvarchar](255) NOT NULL,
	[matkhau] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 4/14/2024 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDonDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TenDH] [nvarchar](255) NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[HinhAnh] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDonDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongHo]    Script Date: 4/14/2024 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongHo](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[TenDH] [nvarchar](255) NULL,
	[MaLoai] [int] NULL,
	[DonGia] [int] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[HinhAnh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/14/2024 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[MK] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDH]    Script Date: 4/14/2024 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDH](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([email], [matkhau]) VALUES (N'admin@gmail.com', N'123@')
GO
SET IDENTITY_INSERT [dbo].[DongHo] ON 

INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (1, N'Đồng hồ Apple Watch', 1, 1500000, N'Đồng hồ thông minh với nhiều tính năng', N'apw.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (2, N'Đồng hồ Garmin', 2, 6000000, N'Đồng hồ thể thao chống nước', N'garmin1.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (3, N'Đồng hồ Rolex', 3, 250000000, N'Đồng hồ cổ điển mạ vàng', N'rolex1.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (4, N'Đồng hồ Casio', 4, 1100000, N'Đồng hồ kim loại chống gỉ', N'casio.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (25, N'Citizen AR222-81H', 4, 13685000, N'Citizen Tsuyosa NJ0154-80H – Nam – Kính Sapphire – Automatic (Tự Động) – Mặt Số 40mm, Trữ Cót 40 Giờ, Chống Nước 5ATM', N'anh3.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (26, N'Citizen AR222-81H', 4, 13685000, N'Citizen Tsuyosa NJ0154-80H – Nam – Kính Sapphire – Automatic (Tự Động) – Mặt Số 40mm, Trữ Cót 40 Giờ, Chống Nước 5ATM', N'anh4.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (27, N'Casio LTP-1303D-7AVDF', 4, 1356000, N'Đồng hồ nữ cao cấp Casio LTP-1303D-7AVDF với mặt đồng hồ có nền trắng tinh tế, cùng với chữ số vạch đơn giản và 3 kim chỉ giờ, chất liệu thép không gỉ cao cấp và mặt kính khoáng chịu lực.', N'anh5.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (28, N'Longines Grande Classique L4.209.2.12.7 ', 4, 35937500, N'Đồng hồ Longines L4.209.2.12.7 với mặt số trắng, 3 kim chỉ vạch số màu đen làm nên sự hài hòa cho chiếc đồng hồ, kết hợp với dây đờ mi toát lên nét sang trọng quý phái cho người mang.', N'anh6.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (29, N'Doxa D206SCM', 4, 30500000, N'Mẫu Doxa D206SCM vẻ ngoài đơn giản tính tế với chức năng 3 kim, các chi tiết kim chỉ cùng cọc vạch số mạ vàng nổi bật trên nền mặt số kích thước 41mm.', N'anh7.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (30, N'Saga Stella 53585-RGMPRG-2S ', 1, 6384000, N'Mẫu Saga 53585-RGMPRG-2S phiên bản mặt số trắng xà cừ họa tiết hình cánh hoa phong cách thời trang sang trọng với thiết kế đính pha lê Swarovski', N'anh8.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (31, N'Fossil Carlie ES4432 ', 1, 3470000, N'Mẫu đồng hồ ES4432 thiết kế kiểu dáng nhỏ nhắn thanh mảnh tôn lên vẻ thanh lịch cho phái đẹp đến từ thương hiệu Fossil, các chi tiết vạch số được tạo nét mỏng của sự tinh tế.', N'anh9.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (32, N'Daniel Wellington Quadro 5-Link DW00100620', 1, 6190000, N'Mẫu Daniel Wellington DW00100620 phiên bản sang trọng 12 viên đá pha lê đính tương ứng 12 múi giờ trên nền mặt số kích thước hình chữ nhật kích thước 20 x 26mm phù hợp cho phái đẹp có phần cổ tay nhỏ.', N'anh10.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (34, N'Saga Stella 71936-RGRDRD', 1, 5275000, N'Mẫu Saga 71936-RGRDRD-2 phiên bản đồng hồ nghệ thuật và đầy sang trọng của với thiết kế mặt số vuông đính kim cương góc 12 giờ.', N'anh12.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (35, N'Casio World Time AE-1200WHD-1AVDF', 2, 1506000, N'Đồng hồ nam Casio AE1200WHD có mặt đồng hồ vuông to với phong cách thể thao, mặt số điện tử với những tính năng hiện đại tiện dụng, kết hợp với dây đeo bằng kim loại đem lại vẻ mạnh mẽ cá tính dành cho phái nam.', N'anh13.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (36, N'Casio EFR-526L-1AVUDF', 2, 3426000, N'Đồng hồ Casio Edifice EFR-526L-1AVUDF tạo ấn tượng nhờ tông màu đen chủ đạo của bộ dây đeo da chắc chắn và mặt số Chronograph thể thao. Sử dụng chất liệu chế tác cao cấp cho trải nghiệm đáng tiền trong nhiều dịp khác nhau', N'anh14.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (37, N'Casio LRW-200H-4E3VDF', 2, 939000, N'Mẫu Casio LRW-200H-4E3VDF thiết kế dây vỏ nhựa tone màu trắng năng động, mặt số đơn giản size 34mm kiểu dáng 3 kim 1 lịch.', N'anh15.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (38, N'Casio AE-1200WH-1AVDF', 2, 1259000, N'Đồng hồ điện tử Casio AE-1200WH-1AVDF dành cho các bạn trẻ, các tính năng đa dụng cho bộ đếm giờ, chất liệu được làm bằng nhựa cao cấp, mặt kính cứng chịu lực.', N'anh16.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (39, N'G-Shock GA-2100-1A1DR', 2, 3814000, N'Mẫu G-Shock GA-2100-1A1DR với thiết kế mạnh mẽ, trẻ trung, cùng cấu trúc lõi Carbon và khả năng chống nước 20ATM, xứng đáng là người bạn đồng hành cùng bạn chinh phục mọi đam mê', N'anh17.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (40, N'Seiko 5 Sports 55th Anniversary Lý Tiểu Long', 3, 14250000, N'Mẫu Seiko 5 Sports SRPK39K1 phiên bản giới hạn chỉ 15.000 chiếc trên toàn cầu, là ấn phẩm kỷ niệm 55 năm ra mắt bộ sưu tập Seiko 5 Sports, đồng thời vinh danh ngôi sao điện ảnh võ thuật Lý Tiểu Long qua toàn bộ thiết kế đồng hồ lấy cảm hứng từ ông.', N'anh18.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (41, N'Đồng hồ đeo tay Rado Golden Horse SS Automatic', 3, 5000000, N'Đồng hồ đeo tay Rado Golden Horse, một tác phẩm tinh tế của thương hiệu danh tiếng Rado, không chỉ là một chiếc đồng hồ đeo tay, mà còn là biểu tượng của sự sang trọng và đẳng cấp. Với mặt trải tia cao cấp, chiếc đồng hồ đeo tay Golden Horse trở thành một tác phẩm nghệ thuật, với các đường tia chạy ra từ trung tâm, tạo nên một vẻ đẹp độc đáo và cuốn hút.
Đặc biệt, tại góc 3h, đồng hồ đeo tay Golden Horse được trang bị một lịch ngày tinh tế, không chỉ là tính năng hữu ích mà còn thể hiện sự tinh tế và cẩn trọng trong thiết kế. Với cửa sổ hiển thị số ngày việc đọc giờ và ngày trở nên dễ dàng hơn bao giờ hết.', N'anh19.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (42, N'Đồng hồ đeo tay Mido Commander mặt kim sa cát đính đá', 3, 10500000, N'M.I.D.O Commander – Ocean star/ Datoday Automatic chính hãng Thuỵ Sĩ
Từng đường nét đều tuyệt vời và được chế tác 1 cách quá Mê Hoặc và Tỉ Mỉ 
* Size 37,5 mm phù hợp cho mọi bác lên tay khi muốn chơi dòng xưa 
* Dial kim sa cát cực kỳ hiếm gặp nổi bật thiết kế bộ kim và đặc biệt được thiết kế đính đá phần cọc số
* Thân hoàn toàn bằng vỏ thép SS bền bỉ và chắc chắ', N'anh20.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (43, N'Đồng hồ đeo tay Omega Seamaster De Ville vỏ thép bén cạnh', 3, 10500000, N'Đồng hồ đeo tay Omega Seamaster De Ville là biểu tượng của sự tinh tế và đẳng cấp trong thế giới đồng hồ cao cấp. Được giới thiệu vào những năm 1960, dòng đồng hồ này đã nhanh chóng gặt hái được sự ưa chuộng của các tín đồ đồng hồ trên khắp thế giới.', N'anh21.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (44, N'Casio F-91W-1HDG', 5, 625000, N'Mẫu Casio F-91W-1HDG phiên bản mặt số vuông điện tử phong cách cổ điển, thiết kế đa chức năng kết hợp cùng mẫu dây vỏ cao su khả năng chịu va đập.', N'anh23.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (45, N'Casio W-218H-4BVDF ', 5, 848000, N'Mẫu Casio W-218H-4BVDF mặt số kiểu dáng vuông điện tử hiện thị đa chức năng, thiết kế tổng thể chất liệu nhựa cùng với mẫu dây đeo được phối tone màu đỏ cá tính thời trang dành các bạn trẻ năng động', N'anh24.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (46, N'Casio LRW-200H-4E3VDF', 5, 939000, N'Mẫu Casio LRW-200H-4E3VDF thiết kế dây vỏ nhựa tone màu trắng năng động, mặt số đơn giản size 34mm kiểu dáng 3 kim 1 lịch.', N'anh25.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (47, N'Casio W-218H-3AVDF', 5, 839000, N'Mẫu Casio W-218H-3AVDF kiểu dáng nền mặt số điện tử hiện thị đa chức năng đầy tiện ích, với phiên bản thiết kế tổng thể bằng nhựa cùng khả năng chịu nước 5 ATM tạo nên vẻ cá tính đầy mạnh mẽ.', N'anh26.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (48, N'Casio MCW-200H-2AVDF', 5, 2452000, N'Mẫu Casio MCW-200H-2AVDF phong cách thể thao với kiểu dáng đồng hồ 6 kim ấn tượng cùng khả năng chịu nước lên đến 10ATM tạo nên vẻ năng động trẻ trung đầy nam tính.', N'anh27.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (49, N'Tissot PRX Powermatic ', 1, 21000000, N'Mẫu Tissot T137.207.11.041.00 đến từ Thụy Sĩ sở hữu thiết kế cân bằng giữa vẻ đẹp tinh tế và sang trọng với mặt số màu xanh da trời tươi mới.', N'anh28.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (50, N'Saga 53766-SVSVSV-2', 1, 7520000, N'Saga Stella 53766-SVSVSV-2 bản giao hưởng giữa nghệ thuật chế tác đồng hồ và trang sức đeo tay. Mặt số đính đá Swarovski cỡ lớn trở thành điểm nhấn nổi bật bất cứ hoàn cảnh nào.', N'anh29.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (51, N'Tissot Le Locle T006.407.16.033.00', 1, 17500000, N'Mẫu Tissot T006.407.16.033.00 với thiết kế chữ số được in theo phong cách chữ la mã mang đậm nét cổ điển trên nền mặt kính Sapphire, kết hợp cùng dây đeo bằng da có vân tăng thêm vẻ lịch lãm', N'anh30.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (52, N'Citizen Tsuyosa NJ0154-80H ', 1, 13685000, N'Mẫu Citizen NJ0154-80H phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.', N'anh31.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (53, N'Daniel Wellington MOP Classic Petite Special Edition', 1, 4940000, N'Mẫu Daniel Wellington DW00100514 phiên bản mặt số tròn được phối tone màu hồng xà cừ thời trang trẻ trung kết hợp cùng mẫu máy pin được thiết kế siêu mỏng chỉ 6mm.', N'anh32.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (54, N'NUSaga Stella 53555-SVMWSV-2LL', 1, 5244000, N'Saga Stella 53555-SVMWSV-2 là mẫu đồng hồ thời trang đến từ Mỹ, kết hợp giữa thiết kế vòng tay và đính đá Swarovski sang trọng, độc đáo. Mặt số khảm xà cừ thiên nhiên cho màu sắc óng ánh, thay đổi theo từng góc nhìn.', N'anh33.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (55, N'Đồng hồ thông minh Huawei Watch GT4 dây da', 2, 4490000, N'Huawei Watch GT 4 gây ấn tượng với người dùng bởi 2 phiên bản 46mm và 41mm thiết kế sang trọng và màu sắc đa dạng: xanh, xám, nâu, đen, trắng bạc. Bên cạnh đó, thời lượng pin sử dụng lên đến 14 ngày với bản 46mm và 7 ngày với bản 41mm giúp nâng cao trải nghiệm sử dụng mà không cần lo lắng gián đoạn giữa chừng. Các tính năng khác nổi bật phải kể đến như: huấn luyện viên thông minh với hơn 100 bài luyện tập, theo dõi giấc ngủ TruSleep, phát hiện nhịp tim bất thường, dự đoán trước chu kỳ và thời gian rụng trứng ở nữ giới,...', N'anh34.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (56, N'
DECATHLON
Đồng hồ thể thao kỹ thuật số ATW100 - Đen', 2, 32300000, N'Đồng hồ GPS Kiprun 500 phù hợp cho môn chạy bộ, chạy địa hình và triathlon! Bạn muốn một chiếc đồng hồ thông minh GPS cho nhiều môn thể thao? Sản phẩm này đo mọi hoạt động của bạn: chạy, bơi trong nhà hay ngoài trời, thậm chí là ba môn phối hợp.', N'anh35.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (58, N'
KALENJI
Đồng hồ thể thao bấm giờ W200 S', 2, 5244000, N'Đồng hồ Casio Edifice EFR-526L-1AVUDF tạo ấn tượng nhờ tông màu đen chủ đạo của bộ dây đeo da chắc chắn và mặt số Chronograph thể thao. Sử dụng chất liệu chế tác cao cấp cho trải nghiệm đáng tiền trong nhiều dịp khác nhau', N'anh37.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (61, N'
DECATHLON
Đồng hồ thể thao W500M - Be', 2, 625000, N'Đội ngũ đam mê chạy bộ của chúng tôi đã thiết kế chiếc đồng hồ này để bạn có thể tính giờ tập luyện và thiết lập chương trình tập luyện ngắt quãng. Bạn đang tìm mua đồng hồ bền bỉ và thanh lịch để theo dõi các buổi chạy bộ? Tùy chỉnh buổi tập luyện bằng chế độ tập luyện ngắt quãng nâng cao!', N'anh38.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (62, N'
KALENJI
Dây theo dõi nhịp tim công nghệ Ant+ có kết nối bluetooth', 2, 5244000, N'
KALENJI
Dây theo dõi nhịp tim công nghệ Ant+ có kết nối bluetooth
Mã sản phẩm: 8334795

995,000 VND
4.5/5
★
13
KÍCH CỠ
Một cỡ duy nhất
ƯU ĐÃI GIẢM 20K TỚI HẾT NGÀY 09/04
Áp dụng mã EXTRA20 để giảm 20,000 cho đơn hàng từ 300,000 VND!
ƯU ĐÃI GIẢM 5% TỚI HẾT NGÀY 09/04
Áp dụng mã EXTRA5 để giảm 5% cho đơn hàng từ 600,000 VND!
Sản phẩm hiện đang hết hàng
Home DeliveryFreeship tối đa 100K cho đơn trên 499K
Returns30 Ngày Trả Hàng
GIAO HÀNG
Hình thức giao hàng có sẵn cho tỉnh & quận

Hồ Chí Minh Quận 1Success
Home Delivery
GIAO HÀNG TẠI NHÀ - Không có
Pickup
TẤT CẢ ĐIỂM LẤY HÀNG
MỤC ĐÍCH SẢN PHẨM
Nhịp tim trên smartphone hoặc đồng hồ định vị GPS Nhịp tim trên điện thoại thông minh hoặc đồng hồ định vị GPS.', N'anh39.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (63, N'
KALENJI
Dây theo dõi nhịp tim công nghệ Ant+ có kết nối bluetooth', 3, 5244000, N'
KALENJI
Dây theo dõi nhịp tim công nghệ Ant+ có kết nối bluetooth
Mã sản phẩm: 8334795

995,000 VND
4.5/5
★
13
KÍCH CỠ
Một cỡ duy nhất
ƯU ĐÃI GIẢM 20K TỚI HẾT NGÀY 09/04
Áp dụng mã EXTRA20 để giảm 20,000 cho đơn hàng từ 300,000 VND!
ƯU ĐÃI GIẢM 5% TỚI HẾT NGÀY 09/04
Áp dụng mã EXTRA5 để giảm 5% cho đơn hàng từ 600,000 VND!
Sản phẩm hiện đang hết hàng
Home DeliveryFreeship tối đa 100K cho đơn trên 499K
Returns30 Ngày Trả Hàng
GIAO HÀNG
Hình thức giao hàng có sẵn cho tỉnh & quận

Hồ Chí Minh Quận 1Success
Home Delivery
GIAO HÀNG TẠI NHÀ - Không có
Pickup
TẤT CẢ ĐIỂM LẤY HÀNG
MỤC ĐÍCH SẢN PHẨM
Nhịp tim trên smartphone hoặc đồng hồ định vị GPS Nhịp tim trên điện thoại thông minh hoặc đồng hồ định vị GPS.', N'anh40.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (64, N'Đồng hồ thông minh Huawei Watch GT4 dây da', 3, 625000, N'Huawei Watch GT 4 gây ấn tượng với người dùng bởi 2 phiên bản 46mm và 41mm thiết kế sang trọng và màu sắc đa dạng: xanh, xám, nâu, đen, trắng bạc. Bên cạnh đó, thời lượng pin sử dụng lên đến 14 ngày với bản 46mm và 7 ngày với bản 41mm giúp nâng cao trải nghiệm sử dụng mà không cần lo lắng gián đoạn giữa chừng. Các tính năng khác nổi bật phải kể đến như: huấn luyện viên thông minh với hơn 100 bài luyện tập, theo dõi giấc ngủ TruSleep, phát hiện nhịp tim bất thường, dự đoán trước chu kỳ và thời gian rụng trứng ở nữ giới,...', N'anh42-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (65, N'Casio MCW-200H-2AVDF', 4, 4940000, N'Mẫu Casio MCW-200H-2AVDF phong cách thể thao với kiểu dáng đồng hồ 6 kim ấn tượng cùng khả năng chịu nước lên đến 10ATM tạo nên vẻ năng động trẻ trung đầy nam tính.', N'anh44-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (66, N'Đồng hồ đeo tay Omega Seamaster De Ville vỏ thép bén cạnh', 5, 4490000, N'Đồng hồ đeo tay Omega Seamaster De Ville là biểu tượng của sự tinh tế và đẳng cấp trong thế giới đồng hồ cao cấp. Được giới thiệu vào những năm 1960, dòng đồng hồ này đã nhanh chóng gặt hái được sự ưa chuộng của các tín đồ đồng hồ trên khắp thế giới.', N'anh43.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (67, N'Tissot PRX Powermatic ', 5, 21000000, N'Mẫu Tissot T137.207.11.041.00 đến từ Thụy Sĩ sở hữu thiết kế cân bằng giữa vẻ đẹp tinh tế và sang trọng với mặt số màu xanh da trời tươi mới.', N'anh444.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (68, N'Tissot PRX Powermatic ', 5, 20000, N'Mẫu Tissot T137.207.11.041.00 đến từ Thụy Sĩ sở hữu thiết kế cân bằng giữa vẻ đẹp tinh tế và sang trọng với mặt số màu xanh da trời tươi mới.', N'anh44-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (69, N'Đồng hồ thông minh Huawei Watch GT4 dây da', 5, 4490000, N'Huawei Watch GT 4 gây ấn tượng với người dùng bởi 2 phiên bản 46mm và 41mm thiết kế sang trọng và màu sắc đa dạng: xanh, xám, nâu, đen, trắng bạc. Bên cạnh đó, thời lượng pin sử dụng lên đến 14 ngày với bản 46mm và 7 ngày với bản 41mm giúp nâng cao trải nghiệm sử dụng mà không cần lo lắng gián đoạn giữa chừng. Các tính năng khác nổi bật phải kể đến như: huấn luyện viên thông minh với hơn 100 bài luyện tập, theo dõi giấc ngủ TruSleep, phát hiện nhịp tim bất thường, dự đoán trước chu kỳ và thời gian rụng trứng ở nữ giới,...', N'anh43-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (70, N' DECATHLON Đồng hồ thể thao kỹ thuật số ATW100 - Đen', 3, 32300000, N'Đồng hồ GPS Kiprun 500 phù hợp cho môn chạy bộ, chạy địa hình và triathlon! Bạn muốn một chiếc đồng hồ thông minh GPS cho nhiều môn thể thao? Sản phẩm này đo mọi hoạt động của bạn: chạy, bơi trong nhà hay ngoài trời, thậm chí là ba môn phối hợp.', N'anh41-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (71, N'Đồng hồ thông minh Huawei Watch GT4 dây da', 3, 4490000, N'Huawei Watch GT 4 gây ấn tượng với người dùng bởi 2 phiên bản 46mm và 41mm thiết kế sang trọng và màu sắc đa dạng: xanh, xám, nâu, đen, trắng bạc. Bên cạnh đó, thời lượng pin sử dụng lên đến 14 ngày với bản 46mm và 7 ngày với bản 41mm giúp nâng cao trải nghiệm sử dụng mà không cần lo lắng gián đoạn giữa chừng. Các tính năng khác nổi bật phải kể đến như: huấn luyện viên thông minh với hơn 100 bài luyện tập, theo dõi giấc ngủ TruSleep, phát hiện nhịp tim bất thường, dự đoán trước chu kỳ và thời gian rụng trứng ở nữ giới,...', N'anh40-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (72, N'Daniel Wellington Quadro 5-Link DW00100620', 4, 6190000, N'Mẫu Daniel Wellington DW00100620 phiên bản sang trọng 12 viên đá pha lê đính tương ứng 12 múi giờ trên nền mặt số kích thước hình chữ nhật kích thước 20 x 26mm phù hợp cho phái đẹp có phần cổ tay nhỏ.', N'anh42-removebg-preview.png')
INSERT [dbo].[DongHo] ([MaDH], [TenDH], [MaLoai], [DonGia], [MoTa], [HinhAnh]) VALUES (73, N'Saga Stella 71936-RGRDRD', 4, 5275000, N'Mẫu Saga 71936-RGRDRD-2 phiên bản đồng hồ nghệ thuật và đầy sang trọng của với thiết kế mặt số vuông đính kim cương góc 12 giờ.', N'anh41-removebg-preview.png')
SET IDENTITY_INSERT [dbo].[DongHo] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (1, N'Trần Văn A', N'Đà Nẵng', N'0987654321', N'vanA@gmail.com', N'anhtuan123', CAST(N'1990-01-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (2, N'Nguyễn Thị B', N'Nghệ An', N'0123456789', N'thiB@gmail.com', N'thib123', CAST(N'1991-02-02' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (3, N'Lê Văn C', N'Hà Nội', N'0987123456', N'vanC@gmail.com', N'lec123', CAST(N'1992-03-03' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (4, N'Dương Thị D', N'Ho Chi Minh', N'0978654321', N'thiD@gmail.com', N'thid123', CAST(N'1993-04-04' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (5, N'Phạm Quang E', N'Hải Phòng', N'0123987654', N'quangE@gmail.com', N'quange123', CAST(N'1994-05-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (6, N'Nguyễn Châu Tấn Phát', N'HCM', N'13123123', N'nctp3007@gmail.com', N'123', CAST(N'2004-07-30' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [Email], [MK], [NgaySinh]) VALUES (7, N'DPAD', N'Cà Mau', N'023991283', N'pad@gmail.com', N'123', CAST(N'1994-04-30' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LoaiDH] ([MaLoai], [TenLoai]) VALUES (1, N'Đồng hồ thời trang')
INSERT [dbo].[LoaiDH] ([MaLoai], [TenLoai]) VALUES (2, N'Đồng hồ thể thao')
INSERT [dbo].[LoaiDH] ([MaLoai], [TenLoai]) VALUES (3, N'Đồng hồ cổ điển')
INSERT [dbo].[LoaiDH] ([MaLoai], [TenLoai]) VALUES (4, N'Đồng hồ kim loại')
INSERT [dbo].[LoaiDH] ([MaLoai], [TenLoai]) VALUES (5, N'Đồng hồ nhựa')
GO
ALTER TABLE [dbo].[DongHo]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiDH] ([MaLoai])
GO
