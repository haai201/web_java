/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.19-MariaDB : Database - quanlybanhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`quanlybanhang` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `quanlybanhang`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `Users` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Role` int(15) NOT NULL,
  PRIMARY KEY (`Users`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account` */

insert  into `account`(`Users`,`Password`,`MaNV`,`Role`) values ('Admin','123456','218401001',1),('NhaDuong','219401122','219401122',2),('KieuTrang','15092001','219401130',2),('NamHai','219401122','',2),('QuangSon','219401122','',3),('MaiThem','219401122','',3),('VanTrang','219401122','',3),('MinhQuan','219401122','',3);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `STT` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `MaNV` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MaHH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(15) unsigned NOT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cart` */

insert  into `cart`(`STT`,`MaNV`,`MaHH`,`SoLuong`) values (8,'219401122','88531649',4),(9,'219401122','123456',1);

/*Table structure for table `donban` */

DROP TABLE IF EXISTS `donban`;

CREATE TABLE `donban` (
  `MaHDB` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `NgayBan` date NOT NULL,
  PRIMARY KEY (`MaHDB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `donban` */

insert  into `donban`(`MaHDB`,`NgayBan`) values ('HDB01896371','2020-05-01'),('HDB111111547','2020-05-01');

/*Table structure for table `donnhap` */

DROP TABLE IF EXISTS `donnhap`;

CREATE TABLE `donnhap` (
  `MaHDN` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date NOT NULL,
  PRIMARY KEY (`MaHDN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `donnhap` */

insert  into `donnhap`(`MaHDN`,`NgayNhap`) values ('HDN63246174','2020-03-04'),('HDN645859','2020-05-05'),('HDN6677824','2020-05-11');

/*Table structure for table `hanghoa` */

DROP TABLE IF EXISTS `hanghoa`;

CREATE TABLE `hanghoa` (
  `MaHH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenHH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaNhaCC` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `GiaBan` int(15) NOT NULL,
  PRIMARY KEY (`MaHH`),
  KEY `MaNhaCC` (`MaNhaCC`),
  CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `hanghoa` */

insert  into `hanghoa`(`MaHH`,`TenHH`,`MaNhaCC`,`Mota`,`GiaBan`) values ('123456','Thu???c b??? gan','NCC153241','',100000),('21456476','B???t s???i thanh nhi???t Sensa Cools (6 g??i/h???p)','NCC118101','Kh???i l?????ng t???nh 454g',12000),('318401001','Thu???c b??? n??o BOGANIC','NCC0014','Dung t??ch 500ml',6000),('8277290272','Cao d??n gi???m ??au, kh??ng vi??m Salonpas Pain Relief Patch (5 mi???ng/h???p)','NCC153241','Kh???i l?????ng t???nh 454g',115000),('827749673','Dung d???ch s??c mi???ng Orafar (90ml)','NCC153241','Kh???i l?????ng t???nh 454g',33000),('88531649','Cao h??? ????? gi???m ??au nh???c c?? Tiger Balm Red (19.4g)','NCC 248535','Kh???i l?????ng t???nh 454g',22500),('893610499','Thu???c ??i???u lo??t d??? d??y-t?? tr??ng Sucralfate (2 v??? x 10 vi??n/h???p)','NCC118101','Kh???i l?????ng t???nh 100g',12000);

/*Table structure for table `hoadonban` */

DROP TABLE IF EXISTS `hoadonban`;

CREATE TABLE `hoadonban` (
  `id_HDB` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `NgayBan` datetime DEFAULT current_timestamp(),
  `MaHDB` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenHH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `DonGia` int(15) NOT NULL,
  `TongTien` int(15) NOT NULL,
  `TichDiem` int(10) DEFAULT NULL,
  `MaNV` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_HDB`),
  KEY `MaKH` (`MaKH`,`MaNV`),
  KEY `MaNV` (`MaNV`),
  KEY `MaHDB` (`MaHDB`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `hoadonban` */

/*Table structure for table `hoadonnhap` */

DROP TABLE IF EXISTS `hoadonnhap`;

CREATE TABLE `hoadonnhap` (
  `NgayNhap` datetime NOT NULL,
  `STT` int(15) NOT NULL,
  `MaHDN` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MaNhaCC` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MaHH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenHH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(15) NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `DVT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DVT_chitiet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongTien` int(50) NOT NULL,
  `MaNV` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`NgayNhap`),
  KEY `MaNhaCC` (`MaNhaCC`,`MaHH`,`MaNV`),
  KEY `MaNV` (`MaNV`),
  KEY `MaHH` (`MaHH`),
  KEY `MaHDN` (`MaHDN`),
  CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`),
  CONSTRAINT `hoadonnhap_ibfk_3` FOREIGN KEY (`MaHH`) REFERENCES `hanghoa` (`MaHH`),
  CONSTRAINT `hoadonnhap_ibfk_4` FOREIGN KEY (`MaHDN`) REFERENCES `donnhap` (`MaHDN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `hoadonnhap` */

/*Table structure for table `khachhang` */

DROP TABLE IF EXISTS `khachhang`;

CREATE TABLE `khachhang` (
  `MaKH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CMND` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `SoDT` int(15) NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TichDiem` int(10) DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `khachhang` */

insert  into `khachhang`(`MaKH`,`TenKH`,`CMND`,`SoDT`,`DiaChi`,`TichDiem`) values ('A00010','D????ng V??n Nh??','127389139',339293165,'H?? ????ng',1),('A00011','H?? Nam h???i','1637848361',388090191,'H?? ????ng',1),('A00012','Nguy???n Quang S??n','000067478',822612223,'H?? ????ng',0),('A00013','Nguy???n Minh Qu??n','1371375142',327504207,'H?? ????ng',0),('A00014','Nguy???n Th??? Ki???u Trang','838178682',385600466,'H?? ????ng',0),('A00015','Nguy???n Th??? Th??m ','02630003893',327504207,'H?? ????ng',2),('A00019','Nguy???n Th??? V??n Trang','1234569875',327504207,'H?? ????ng',2);

/*Table structure for table `khohang` */

DROP TABLE IF EXISTS `khohang`;

CREATE TABLE `khohang` (
  `Id_khohang` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `MaHH` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(50) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id_khohang`),
  KEY `MaHH` (`MaHH`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `khohang` */

insert  into `khohang`(`Id_khohang`,`MaHH`,`SoLuong`) values (1,'123456',196),(2,'88531649',94),(3,'827749673',100),(4,'8277290272',100),(5,'312665',100),(6,'893610499',100),(7,'318401001',100);

/*Table structure for table `nhacungcap` */

DROP TABLE IF EXISTS `nhacungcap`;

CREATE TABLE `nhacungcap` (
  `MaNhaCC` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenNhaCC` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nhacungcap` */

insert  into `nhacungcap`(`MaNhaCC`,`TenNhaCC`) values ('NCC 123456','abcv'),('NCC 248535','C??NG TY C??? PH???N TRAPHACO'),('NCC0014','C??NG TY C??? PH???N TRAPHACO'),('NCC118101','C??NG TY C??? PH???N TRAPHACO'),('NCC153241','C??NG TY C??? PH???N TRAPHACO');

/*Table structure for table `nhanvien` */

DROP TABLE IF EXISTS `nhanvien`;

CREATE TABLE `nhanvien` (
  `MaNV` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CMND` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SoDT` int(15) NOT NULL,
  `Mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nhanvien` */

insert  into `nhanvien`(`MaNV`,`TenNV`,`CMND`,`NgaySinh`,`GioiTinh`,`DiaChi`,`SoDT`,`Mail`) values ('219401100','H?? Nam H???i','122352032','2000-06-25','N???','H?? ????ng',368992787,'dungthitran@gmail.com'),('219401122','D????ng V??n Nh??','163882930','2001-02-02','Nam','H?? ????ng',32824855,'nhaduongvan5@gmail.com'),('219401130','Nguy???n Th??? Ki???u Trang','1637848929','2001-09-15','N???','H?? ????ng',337156738,'nhaduongvan5@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
