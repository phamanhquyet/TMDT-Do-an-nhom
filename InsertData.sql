-- Chèn dữ liệu vào bảng account
INSERT INTO [dbo].[account] ([Username], [Password])
VALUES ('quyetpham', '123456'),
       ('minhnhat', '123456');


-- Chèn dữ liệu vào bảng nhasanxuat
INSERT INTO [dbo].[nhasanxuat] ([Manhasx], [Tennhasx])
VALUES ('NSX001', N'Công ty A'),
       ('NSX002', N'Công ty B'),
       ('NSX003', N'Công ty C');

-- Chèn dữ liệu vào bảng loaihang
INSERT INTO [dbo].[loaihang] ([Maloai], [Tenloai])
VALUES ('LH001', N'Bánh ngọt'),
       ('LH002', N'Kẹo lạc'),
       ('LH003', N'Bánh quy');

-- Chèn dữ liệu vào bảng sanpham
INSERT INTO [dbo].[sanpham] ([Masanpham], [Maloai], [Manhasx], [Tensanpham], [Mota], [HinhChinh], [Status], [gia], [soluongban])
VALUES ('SP001', 'LH001', 'NSX001', N'Bánh trứng muối', N'Bánh ngọt thơm phức', 'hinh_sp001.jpg', N'Còn hàng', 15000, 100),
       ('SP002', 'LH002', 'NSX002', N'Kẹo hạt lựu', N'Kẹo lạc thơm ngon', 'hinh_sp002.jpg', N'Còn hàng', 12000, 150),
       ('SP003', 'LH003', 'NSX003', N'Bánh quy sữa', N'Bánh quy thơm ngon', 'hinh_sp003.jpg', N'Hết hàng', 18000, 80);

INSERT INTO [dbo].[sanpham] ([Masanpham], [Maloai], [Manhasx], [Tensanpham], [Mota], [HinhChinh], [Status], [gia], [soluongban])
VALUES 
    ('SP004', 'LH001', 'NSX001', N'Bánh chocolate', N'Bánh ngọt vị sô cô la', N'hinh_sp004.jpg', N'Còn hàng', 20000, 50),
    ('SP005', 'LH002', 'NSX002', N'Kẹo dẻo trái cây', N'Kẹo dẻo hỗn hợp trái cây', N'hinh_sp005.jpg', N'Còn hàng', 15000, 80),
    ('SP006', 'LH003', 'NSX003', N'Bánh quy vani', N'Bánh quy thơm mềm vị vani', N'hinh_sp006.jpg', N'Còn hàng', 18000, 120),
    ('SP007', 'LH001', 'NSX001', N'Bánh mật ong', N'Bánh ngọt mật ong thơm ngon', N'hinh_sp007.jpg', N'Còn hàng', 22000, 30),
    ('SP008', 'LH002', 'NSX002', N'Kẹo bơ', N'Kẹo bơ thơm ngon', N'hinh_sp008.jpg', N'Hết hàng', 13000, 90);


-- Chèn dữ liệu vào bảng giohang
INSERT INTO [dbo].[giohang] ([Masanpham], [Username], [Soluong])
VALUES ('SP001', 'quyetpham', 2),
       ('SP002', 'quyetpham', 1),
       ('SP003', 'minhnhat', 3);


INSERT INTO [dbo].[loaihang] ([Maloai], [Tenloai])
VALUES 
    ('LH004', N'Bánh kem'),
    ('LH005', N'Kẹo mút');

INSERT INTO [dbo].[sanpham] ([Masanpham], [Maloai], [Manhasx], [Tensanpham], [Mota], [HinhChinh], [Status], [gia], [soluongban])
VALUES 
    ('SP009', 'LH004', 'NSX001', N'Bánh kem đào', N'Bánh kem tươi ngon vị đào', N'hinh_sp009.jpg', N'Còn hàng', 25000, 40),
    ('SP010', 'LH004', 'NSX002', N'Bánh kem sô cô la', N'Bánh kem sô cô la đắng ngon', N'hinh_sp010.jpg', N'Còn hàng', 28000, 30),
    ('SP011', 'LH005', 'NSX003', N'Kẹo mút trái cây', N'Kẹo mút hỗn hợp trái cây', N'hinh_sp011.jpg', N'Còn hàng', 18000, 50),
    ('SP012', 'LH005', 'NSX001', N'Kẹo mút dâu', N'Kẹo mút dâu thơm ngon', N'hinh_sp012.jpg', N'Còn hàng', 15000, 60),
    ('SP013', 'LH004', 'NSX002', N'Bánh kem dừa', N'Bánh kem dừa tươi ngon', N'hinh_sp013.jpg', N'Hết hàng', 30000, 20),
    ('SP014', 'LH004', 'NSX003', N'Bánh kem vani', N'Bánh kem vani mềm mịn', N'hinh_sp014.jpg', N'Còn hàng', 26000, 35),
    ('SP015', 'LH005', 'NSX001', N'Kẹo mút nho', N'Kẹo mút vị nho thơm ngon', N'hinh_sp015.jpg', N'Còn hàng', 17000, 70),
    ('SP016', 'LH005', 'NSX002', N'Kẹo mút cam', N'Kẹo mút vị cam thơm ngon', N'hinh_sp016.jpg', N'Hết hàng', 16000, 45),
    ('SP017', 'LH004', 'NSX003', N'Bánh kem hạt dưa hấu', N'Bánh kem hạt dưa hấu tươi ngon', N'hinh_sp017.jpg', N'Còn hàng', 29000, 25),
    ('SP018', 'LH004', 'NSX001', N'Bánh kem việt quất', N'Bánh kem việt quất thơm ngon', N'hinh_sp018.jpg', N'Còn hàng', 27000, 15);