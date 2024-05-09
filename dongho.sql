/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : dongho

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 09/05/2024 21:29:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitietdonhang
-- ----------------------------
DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE `chitietdonhang`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SoLuong` int NULL DEFAULT NULL,
  `Gia` int NULL DEFAULT NULL,
  `SanPham_ID` int NULL DEFAULT NULL,
  `DonHang_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `SanPham_ID`(`SanPham_ID`) USING BTREE,
  INDEX `DonHang_ID`(`DonHang_ID`) USING BTREE,
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`SanPham_ID`) REFERENCES `sanpham` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`DonHang_ID`) REFERENCES `donhang` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitietdonhang
-- ----------------------------

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MoTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'KOI', 'Được định vị là “KOI Watch – Dẫn đầu về chất lượng trong cùng tầm giá”, KOI “đánh bại” tất cả đối thủ nhờ chất lượng tuyệt hảo. Điều này minh chứng qua độ hoàn thiện luôn được chú trọng (dây kim loại dáng Jubilee mềm mại trên cổ tay), vật liệu cao cấp vượt trội (thép không gỉ, kính sapphire chống trầy, đá CZ – Kim cương nhân tạo) cùng nhiều kỹ thuật giúp tăng tính thẩm mỹ (tráng men Enamel, chải tia Sunburst, tách lớp xà cừ,…). KOI Watch – Thương hiệu đồng hồ Việt Nam chính hãng cao cấp đáng sở hữu.');
INSERT INTO `danhmuc` VALUES (2, 'SAGA', 'Saga là thương hiệu thời trang đến từ nước Mỹ từ năm 1950. Saga đang sở hữu 4 dòng sản phẩm chính là Saga Safran: dòng cao cấp, được sản xuất tại Thụy Sỹ. Saga Stella: dòng đồng hồ đeo tay kết hợp trang sức, đính pha lê swarovski. Saga Space: dòng đồng hồ nam kết hợp ý tưởng về không gian và hành tinh. Saga Signature: dòng sản phẩm thanh lịch, truyền thống…');
INSERT INTO `danhmuc` VALUES (3, 'DOXA', 'Doxa là thương hiệu đồng hồ Thụy Sỹ lâu đời, có bề dày lịch sử hơn 130 năm. Với những dấn ấn thăng trầm, nhưng Doxa có quyền tự hào nói với thế giới rằng: “100% chi tiết đồng hồ Doxa được sản xuất tại Thụy Sỹ – SWISS MADE đúng nghĩa, hiện thân của chất lượng kỹ thuật và chất lượng thẩm mỹ mà không có bất kỳ sự trộn lẫn nào…');
INSERT INTO `danhmuc` VALUES (4, 'Casio', 'Casio là thương hiệu đồng hồ lâu đời trong ngành công nghiệp đồng hồ tại Nhật Bản. Những mẫu đồng hồ Casio nam nữ được yêu thích bởi thiết kế đơn giản, dễ dàng để xem giờ, được trang bị đầy đủ các công nghệ mới nhất và có giá bán cực kỳ rẻ. Ngoài ra, đồng hồ Casio chính hãng còn nổi bật với chức năng đa dạng như bluetooth, dạ quang, giờ thế giới, báo thức, lịch ngày, thứ,…');
INSERT INTO `danhmuc` VALUES (5, 'Daniel Wellington', 'Daniel Wellington – Thương hiệu đồng hồ Thuỵ Điển được thành lập năm 2011. Thế mạnh về phong cách tối giản, thanh lịch, đồng hồ DW nam, nữ rất dễ phối với mọi loại trang phục. Với sức sáng tạo và sự chuyển động không ngừng của ngành thời trang, hãng bắt đầu cho ra mắt nhiều hơn ở dòng đồng hồ DW nam, nữ, cặp đôi kiểu dây thép, kim loại, đính đá, khảm xà cừ, mặt vuông, máy cơ automatic thay vì kiểu dáng mặt tròn đơn giản như trước đó.');
INSERT INTO `danhmuc` VALUES (6, 'Tissot', 'Tissot – “Nét tinh hoa Thuỵ Sỹ hoà quyện cùng giá trị thời đại.” Thành lập năm 1853, Tissot ghi dấu mạnh mẽ trong lòng giới mộ điệu với những chiếc đồng hồ Thụy Sỹ hội tụ 3 yếu tố: Chất lượng cao cấp, thiết kế tinh tế và giá cả phải chăng. Luôn tiên phong trong đổi mới, Tissot ứng dụng công nghệ, vật liệu tiên tiến và sáng tạo trong thiết kế, mang đến những trải nghiệm độc đáo cho người dùng. Mới đây, vào năm 1998, Tissot đã chính thức trở thành thành viên của tập đoàn Swatch Group.');
INSERT INTO `danhmuc` VALUES (7, 'Orient', 'Orient – Thương hiệu đồng hồ Nhật Bản thuộc Seiko Epson thành lập vào năm 1950. Orient sử dụng bộ máy inhouse mang lại chất lượng hoàn thiện nhất và được vinh danh là hãng có tỷ lệ đồng hồ cơ trên tổng số đồng hồ sản xuất ra cao nhất tại Nhật Bản. Lạc vào thế giới của Orient, bạn sẽ đắm chìm trong nhịp đập của từng cỗ máy cơ hoàn hảo!');
INSERT INTO `danhmuc` VALUES (8, 'Citizen', 'Citizen là thương hiệu Nhật Bản được thành lập vào năm 1918. Ra đời dựa trên sứ mệnh mang đến những chiếc đồng hồ đại chúng, giá bình dân – chất lượng tốt để ai cũng có thể sử dụng được. Với công nghệ phát minh độc quyền (Eco-Drive) sử dụng ánh sáng chuyển hoá thành năng lượng đã giúp hãng thăng tiến trên bản đồ đồng hồ thế giới, góp phần bảo vệ môi trường xanh trên toàn cầu.');
INSERT INTO `danhmuc` VALUES (9, 'Rado', 'Rado được mệnh danh là “Bậc thầy vật liệu” với nhiều phát minh độc đáo trong chất liệu chế tác đồng hồ như gốm sứ công nghệ cao, titanium siêu nhẹ, xà cừ, sapphire, kim cương… Kế thừa tinh hoa từ vương quốc đồng hồ Thuỵ Sỹ, toàn bộ đồng hồ Rado nam, nữ, cặp đôi chính hãng đều đạt chứng nhận Swiss Made danh giá cùng bộ máy ETA đặc trưng của tập đoàn Swatch Group.');
INSERT INTO `danhmuc` VALUES (10, 'Seiko', 'Thành lập năm 1881, Seiko đã trở thành biểu tượng của sự chính xác thông qua cỗ máy bền bỉ do Seiko tự lắp ráp. 5 “từ khóa” mà giới mộ điệu dùng để mô tả về những mẫu đồng hồ Seiko chính hãng: thương hiệu dẫn đầu, cỗ máy đáng tin cậy, độ chống nước tuyệt vời, thiết kế sang trọng, vật liệu thượng hạng. Bạn dễ dàng tìm thấy điều này thông qua các mẫu đồng hồ Seiko nam, nữ chính hãng với nhiều tùy chọn dây da, kim loại, máy Quartz hoặc automatic. Trang website: seikowatches.com đã ghi nhận Hải Triều là nhà bán lẻ chính thức của Seiko tại Việt Nam.');
INSERT INTO `danhmuc` VALUES (11, 'Longines', 'Longines là hãng đồng hồ Thuỵ Sỹ thành lập vào năm 1889, chính thức sáp nhập vào tập đoàn Swatch Group vào năm 1983. Toàn bộ đồng hồ Longines đều sử dụng bộ máy ETA cao cấp, đạt chuẩn Swiss Made danh giá trong ngành. Với phong cách chủ đạo là tối giản, tinh tế, cùng thiết kế mặt số siêu mỏng, đây chắc chắn là hãng đồng hồ cơ Thuỵ Sỹ sang trọng, đáng sở hữu nhất!');

-- ----------------------------
-- Table structure for donhang
-- ----------------------------
DROP TABLE IF EXISTS `donhang`;
CREATE TABLE `donhang`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `NoiGiao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SDT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `NgayDat` datetime(0) NULL DEFAULT NULL,
  `TrangThai` int NULL DEFAULT NULL,
  `NguoiDung_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `NguoiDung_ID`(`NguoiDung_ID`) USING BTREE,
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`NguoiDung_ID`) REFERENCES `nguoidung` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donhang
-- ----------------------------

-- ----------------------------
-- Table structure for gioithieu
-- ----------------------------
DROP TABLE IF EXISTS `gioithieu`;
CREATE TABLE `gioithieu`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gioithieu
-- ----------------------------
INSERT INTO `gioithieu` VALUES (1, 'Chào mừng bạn đến với Stroyka, nơi đâu sự hoàn hảo gặp gỡ với phong cách. Chúng tôi tự hào là điểm đến hàng đầu cho những người yêu thích thời trang và đam mê nghệ thuật thời gian. Với một bộ sưu tập đa dạng và phong phú về các loại đồng hồ đeo tay từ các thương hiệu danh tiếng trên thế giới, chúng tôi cam kết mang đến cho bạn trải nghiệm mua sắm tuyệt vời nhất.');
INSERT INTO `gioithieu` VALUES (2, 'Tại Stroyka, bạn sẽ khám phá được sự kết hợp tinh tế giữa thiết kế độc đáo, chất lượng tốt nhất và giá trị đáng kinh ngạc. Từ những chiếc đồng hồ thể thao năng động đến những mẫu sang trọng phù hợp với các dịp quan trọng, chúng tôi luôn có sản phẩm phù hợp với mọi phong cách và nhu cầu của khách hàng.');
INSERT INTO `gioithieu` VALUES (3, 'Với mục tiêu mang đến sự hài lòng tuyệt đối cho khách hàng, chúng tôi không chỉ cung cấp sản phẩm chất lượng mà còn cam kết đem đến dịch vụ khách hàng tận tâm và chuyên nghiệp. Hãy để chúng tôi làm điểm đến đáng tin cậy cho mọi nhu cầu của bạn trong việc tìm kiếm chiếc đồng hồ đeo tay hoàn hảo. Hãy khám phá [Tên Website] ngay hôm nay và biến mỗi khoảnh khắc của cuộc sống trở nên đẹp đẽ và đáng nhớ hơn.');

-- ----------------------------
-- Table structure for lienhe
-- ----------------------------
DROP TABLE IF EXISTS `lienhe`;
CREATE TABLE `lienhe`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lienhe
-- ----------------------------
INSERT INTO `lienhe` VALUES (1, 'Stroyka - Việt Nam:\r\nĐịa chỉ: Việt Nam\r\nĐiện thoại: 0987654321\r\nEmail: Stroyka@gmail.com');
INSERT INTO `lienhe` VALUES (2, 'Thời gian hoạt động:\r\nChúng tôi mở cửa từ Thứ Hai đến Chủ Nhật, từ 8:00 sáng đến 8:00 tối.');
INSERT INTO `lienhe` VALUES (3, 'Hỗ trợ khách hàng:\r\nChúng tôi luôn sẵn lòng hỗ trợ bạn trong quá trình mua sắm và sau khi mua hàng. Đừng ngần ngại liên hệ với đội ngũ hỗ trợ khách hàng của chúng tôi qua điện thoại hoặc email nếu bạn có bất kỳ câu hỏi hoặc yêu cầu nào.');
INSERT INTO `lienhe` VALUES (4, 'Phản hồi và Góp ý:\r\nChúng tôi luôn trân trọng mọi phản hồi và góp ý từ phía khách hàng. Nếu bạn có bất kỳ đề xuất nào để cải thiện dịch vụ của chúng tôi, xin vui lòng liên hệ với chúng tôi. Ý kiến của bạn là nguồn động viên quý báu giúp chúng tôi phát triển và hoàn thiện hơn.');

-- ----------------------------
-- Table structure for nguoidung
-- ----------------------------
DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE `nguoidung`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TaiKhoan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Gmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SDT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Quyen` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nguoidung
-- ----------------------------
INSERT INTO `nguoidung` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin@gmail.com', 'Việt Nam', '0987654321', 1);
INSERT INTO `nguoidung` VALUES (2, 'khach', 'e10adc3949ba59abbe56e057f20f883e', 'khach', 'khach@gmail.com', 'Việt Nam', '0987654321', 2);

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Anh` longblob NULL,
  `Gia` int NULL DEFAULT NULL,
  `SoLuong` int NULL DEFAULT NULL,
  `Kinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `May` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DuongKinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Mau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ChucNang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `NoiSanXuat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MoTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `NgayTao` datetime(0) NULL DEFAULT NULL,
  `DanhMuc_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `Loai_ID`(`DanhMuc_ID`) USING BTREE,
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`DanhMuc_ID`) REFERENCES `danhmuc` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Anh` longblob NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide
-- ----------------------------

-- ----------------------------
-- Procedure structure for sp_ctdonhang_getbydonhang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ctdonhang_getbydonhang`;
delimiter ;;
CREATE PROCEDURE `sp_ctdonhang_getbydonhang`(IN p_id INT)
BEGIN
    SELECT c.*, s.ten AS TenSanPham
		FROM chitietdonhang c 
		INNER JOIN sanpham s ON c.sanpham_id = s.id
		WHERE c.donhang_id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_create`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_create`(IN p_ten VARCHAR(255),
		IN p_mota TEXT)
BEGIN
    INSERT INTO danhmuc (ten, mota)
    VALUES (p_ten, p_mota);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_delete`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_delete`(IN p_id INT)
BEGIN
    DELETE FROM danhmuc WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_getall_asc`()
BEGIN
    SELECT * FROM danhmuc ORDER BY ID ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_getall_desc`()
BEGIN
    SELECT * FROM danhmuc ORDER BY ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_getbyid`(IN p_id INT)
BEGIN
    SELECT * FROM danhmuc WHERE ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_danhmuc_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_danhmuc_update`;
delimiter ;;
CREATE PROCEDURE `sp_danhmuc_update`(IN p_id INT,
		IN p_ten VARCHAR(255),
		IN p_mota TEXT)
BEGIN
    UPDATE loaisanpham 
    SET 
        ten = IFNULL(p_ten, ten),
				mota = IFNULL(p_mota, mota)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_donhang_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_donhang_create`;
delimiter ;;
CREATE PROCEDURE `sp_donhang_create`(IN p_hoten VARCHAR(255),
    IN p_noigiao VARCHAR(255),
    IN p_sdt VARCHAR(255),
    IN p_trangthai INT,
    IN p_nguoidungid INT,
    IN p_listchitiet TEXT)
BEGIN
    DECLARE donhang_id INT;

    INSERT INTO donhang (hoten, noigiao, sdt, ngaydat, trangthai, nguoidung_id)
    VALUES (p_hoten, p_noigiao, p_sdt, NOW(), p_trangthai, p_nguoidungid);

    SET donhang_id = LAST_INSERT_ID();

    IF p_listchitiet IS NOT NULL THEN
        INSERT INTO chitietdonhang (soluong, gia, sanpham_id, donhang_id)
        SELECT 
            JSON_UNQUOTE(JSON_EXTRACT(value, '$.SoLuong')),
            JSON_UNQUOTE(JSON_EXTRACT(value, '$.Gia')),
            JSON_UNQUOTE(JSON_EXTRACT(value, '$.SanPham_ID')),
            donhang_id
        FROM JSON_TABLE(p_listchitiet, '$[*]' COLUMNS(value JSON PATH '$')) AS jt;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_donhang_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_donhang_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_donhang_getall_desc`()
BEGIN
    SELECT d.*, n.hoten AS TenNguoiDung
		FROM donhang d 
		INNER JOIN nguoidung n ON d.nguoidung_id = n.id
		ORDER BY d.ngaydat DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_donhang_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_donhang_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_donhang_getbyid`(IN p_id INT)
BEGIN
    SELECT d.*, n.hoten AS TenNguoiDung
		FROM donhang d 
		INNER JOIN nguoidung n ON d.nguoidung_id = n.id
		WHERE d.id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_donhang_getbynguoidung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_donhang_getbynguoidung`;
delimiter ;;
CREATE PROCEDURE `sp_donhang_getbynguoidung`(IN p_id INT)
BEGIN
    SELECT d.*, n.hoten AS TenNguoiDung
		FROM donhang d 
		INNER JOIN nguoidung n ON d.nguoidung_id = n.id
		WHERE d.nguoidung_id = p_id
		ORDER BY d.ngaydat DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_donhang_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_donhang_update`;
delimiter ;;
CREATE PROCEDURE `sp_donhang_update`(IN p_id INT,
    IN p_trangthai INT)
BEGIN
    UPDATE donhang 
    SET 
				trangthai = IFNULL(p_trangthai, trangthai)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_create`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_create`(IN p_noidung TEXT)
BEGIN
    INSERT INTO gioithieu (noidung)
    VALUES (p_noidung);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_delete`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_delete`(IN p_id INT)
BEGIN
    DELETE FROM gioithieu WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_getall_asc`()
BEGIN
    SELECT * FROM gioithieu ORDER BY ID ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_getall_desc`()
BEGIN
    SELECT * FROM gioithieu ORDER BY ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_getbyid`(IN p_id INT)
BEGIN
    SELECT * FROM gioithieu WHERE ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_gioithieu_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_gioithieu_update`;
delimiter ;;
CREATE PROCEDURE `sp_gioithieu_update`(IN p_id INT,
		IN p_noidung TEXT)
BEGIN
    UPDATE gioithieu 
    SET 
        noidung = IFNULL(p_noidung, noidung)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_create`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_create`(IN p_noidung TEXT)
BEGIN
    INSERT INTO lienhe (noidung)
    VALUES (p_noidung);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_delete`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_delete`(IN p_id INT)
BEGIN
    DELETE FROM lienhe WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_getall_asc`()
BEGIN
    SELECT * FROM lienhe ORDER BY ID ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_getall_desc`()
BEGIN
    SELECT * FROM lienhe ORDER BY ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_getbyid`(IN p_id INT)
BEGIN
    SELECT * FROM lienhe WHERE ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lienhe_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lienhe_update`;
delimiter ;;
CREATE PROCEDURE `sp_lienhe_update`(IN p_id INT,
		IN p_noidung TEXT)
BEGIN
    UPDATE lienhe 
    SET 
        noidung = IFNULL(p_noidung, noidung)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_create`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_create`(IN p_taikhoan VARCHAR(255),
		IN p_matkhau VARCHAR(255),
		IN p_hoten VARCHAR(255),
		IN p_gmail VARCHAR(255),
		IN p_diachi VARCHAR(255),
		IN p_sdt VARCHAR(255),
		IN p_quyen INT)
BEGIN
    INSERT INTO nguoidung (taikhoan, matkhau, hoten, gmail, diachi, sdt, quyen)
    VALUES (p_taikhoan, p_matkhau, p_hoten, p_gmail, p_diachi, p_sdt, quyen);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_delete`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_delete`(IN p_id INT)
BEGIN
    DELETE FROM nguoidung WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_getall_asc`()
BEGIN
    SELECT *
		FROM nguoidung 
		ORDER BY ID ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_getall_desc`()
BEGIN
    SELECT *
		FROM nguoidung 
		ORDER BY ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_getbyid`(IN p_id INT)
BEGIN
    SELECT *
		FROM nguoidung 
		WHERE ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_kiemtra
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_kiemtra`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_kiemtra`(IN p_taikhoan VARCHAR(255),
    IN p_gmail VARCHAR(255))
BEGIN
    SELECT n.taikhoan AS TaiKhoan, n.gmail AS Gmail
		FROM nguoidung n 
		WHERE (n.taikhoan = p_taikhoan OR n.gmail = p_gmail);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_login`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_login`(IN p_taikhoan VARCHAR(255),
		IN p_matkhau VARCHAR(255))
BEGIN
    SELECT *
		FROM nguoidung 
		WHERE taikhoan = p_taikhoan AND matkhau = p_matkhau;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_nguoidung_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nguoidung_update`;
delimiter ;;
CREATE PROCEDURE `sp_nguoidung_update`(IN p_id INT,
    IN p_matkhau VARCHAR(255),
    IN p_hoten VARCHAR(255),
    IN p_diachi VARCHAR(255),
    IN p_sdt VARCHAR(255),
    IN p_quyen INT)
BEGIN
    UPDATE nguoidung 
    SET 
        matkhau = IFNULL(p_matkhau, matkhau),
        hoten = IFNULL(p_hoten, hoten),
        diachi = IFNULL(p_diachi, diachi),
        sdt = IFNULL(p_sdt, sdt),
        quyen = IFNULL(p_quyen, quyen)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_create`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_create`(IN p_ten VARCHAR(255),
		IN p_anh LONGBLOB,
		IN p_gia INT,
		IN p_soluong INT,
		IN p_kinh VARCHAR(255),
		IN p_may VARCHAR(255),
		IN p_duongkinh VARCHAR(255),
		IN p_mau VARCHAR(255),
		IN p_chucnang VARCHAR(255),
		IN p_noisanxuat VARCHAR(255),
		IN p_mota VARCHAR(255),
		IN p_danhmucid INT)
BEGIN
    INSERT INTO sanpham (ten, anh, gia, soluong, kinh, may, duongkinh, mau, chucnang, noisanxuat, mota, ngaytao, danhmuc_id)
    VALUES (p_ten, p_anh, p_gia, p_soluong, p_kinh, p_may, p_duongkinh, p_mau, p_chucnang, p_noisanxuat, p_mota, NOW(), p_danhmucid);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_delete`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_delete`(IN p_id INT)
BEGIN
    DELETE FROM sanpham WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_getall_asc`(IN p_sl INT)
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		ORDER BY s.ngaytao DESC
		LIMIT p_sl;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_getall_desc`()
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		ORDER BY s.ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_getbyid`(IN p_id INT)
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		WHERE s.ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_getbyloai
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_getbyloai`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_getbyloai`(IN p_id INT)
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		WHERE s.loai_id = p_id
		ORDER BY s.ngaytao DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_random
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_random`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_random`(IN p_sl INT)
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		ORDER BY RAND()
		LIMIT p_sl;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_search
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_search`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_search`(IN p_ten VARCHAR(255))
BEGIN
    SELECT s.*, d.ten AS TenDanhMuc
		FROM sanpham s 
		INNER JOIN danhmuc d ON s.danhmuc_id = d.id
		WHERE s.ten LIKE CONCAT('%', p_ten, '%') OR d.ten LIKE CONCAT('%', p_ten, '%')
		ORDER BY s.ngaytao DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_sanpham_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_sanpham_update`;
delimiter ;;
CREATE PROCEDURE `sp_sanpham_update`(IN p_id INT,
    IN p_ten VARCHAR(255),
		IN p_anh LONGBLOB,
		IN p_gia INT,
		IN p_soluong INT,
		IN p_kinh VARCHAR(255),
		IN p_may VARCHAR(255),
		IN p_duongkinh VARCHAR(255),
		IN p_mau VARCHAR(255),
		IN p_chucnang VARCHAR(255),
		IN p_noisanxuat VARCHAR(255),
		IN p_mota VARCHAR(255),
		IN p_danhmucid INT)
BEGIN
    UPDATE sanpham 
    SET 
        ten = IFNULL(p_ten, ten),
        anh = IFNULL(p_anh, anh),
        gia = IFNULL(p_gia, gia),
        soluong = IFNULL(p_soluong, soluong),
        kinh = IFNULL(p_kinh, kinh),
        may = IFNULL(p_may, may),
				duongkinh = IFNULL(p_duongkinh, duongkinh),
				mau = IFNULL(p_mau, mau),
				chucnang = IFNULL(p_chucnang, chucnang),
				noisanxuat = IFNULL(p_noisanxuat, noisanxuat),
				mota = IFNULL(p_mota, mota),
				danhmuc_id = IFNULL(p_danhmucid, danhmuc_id)
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_create
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_create`;
delimiter ;;
CREATE PROCEDURE `sp_slide_create`(IN p_anh LONGBLOB)
BEGIN
    INSERT INTO slide (anh)
    VALUES (p_anh);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_delete`;
delimiter ;;
CREATE PROCEDURE `sp_slide_delete`(IN p_id INT)
BEGIN
    DELETE FROM slide WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_getall_asc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_getall_asc`;
delimiter ;;
CREATE PROCEDURE `sp_slide_getall_asc`()
BEGIN
    SELECT * FROM slide ORDER BY ID ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_getall_desc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_getall_desc`;
delimiter ;;
CREATE PROCEDURE `sp_slide_getall_desc`()
BEGIN
    SELECT * FROM slide ORDER BY ID DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_getbyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_getbyid`;
delimiter ;;
CREATE PROCEDURE `sp_slide_getbyid`(IN p_id INT)
BEGIN
    SELECT * FROM slide WHERE ID = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_slide_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_slide_update`;
delimiter ;;
CREATE PROCEDURE `sp_slide_update`(IN p_id INT,
		IN p_anh LONGBLOB)
BEGIN
    UPDATE slide 
    SET 
        anh = IFNULL(p_anh, anh)
    WHERE id = p_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
