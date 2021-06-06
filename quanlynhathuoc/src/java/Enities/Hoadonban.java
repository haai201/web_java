package Enities;
// Generated 14-May-2020 18:06:50 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Hoadonban generated by hbm2java
 */
public class Hoadonban  implements java.io.Serializable {


     private Date ngayBan;
     private Donban donban;
     private Khachhang khachhang;
     private Nhanvien nhanvien;
     private String tenHh;
     private int soLuong;
     private int donGia;
     private int tongTien;
     private Integer tichDiem;
     private String tenNv;

    public Hoadonban() {
    }

	
    public Hoadonban(Date ngayBan, Donban donban, Khachhang khachhang, Nhanvien nhanvien, String tenHh, int soLuong, int donGia, int tongTien, String tenNv) {
        this.ngayBan = ngayBan;
        this.donban = donban;
        this.khachhang = khachhang;
        this.nhanvien = nhanvien;
        this.tenHh = tenHh;
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.tongTien = tongTien;
        this.tenNv = tenNv;
    }
    public Hoadonban(Date ngayBan, Donban donban, Khachhang khachhang, Nhanvien nhanvien, String tenHh, int soLuong, int donGia, int tongTien, Integer tichDiem, String tenNv) {
       this.ngayBan = ngayBan;
       this.donban = donban;
       this.khachhang = khachhang;
       this.nhanvien = nhanvien;
       this.tenHh = tenHh;
       this.soLuong = soLuong;
       this.donGia = donGia;
       this.tongTien = tongTien;
       this.tichDiem = tichDiem;
       this.tenNv = tenNv;
    }
   
    public Date getNgayBan() {
        return this.ngayBan;
    }
    
    public void setNgayBan(Date ngayBan) {
        this.ngayBan = ngayBan;
    }
    public Donban getDonban() {
        return this.donban;
    }
    
    public void setDonban(Donban donban) {
        this.donban = donban;
    }
    public Khachhang getKhachhang() {
        return this.khachhang;
    }
    
    public void setKhachhang(Khachhang khachhang) {
        this.khachhang = khachhang;
    }
    public Nhanvien getNhanvien() {
        return this.nhanvien;
    }
    
    public void setNhanvien(Nhanvien nhanvien) {
        this.nhanvien = nhanvien;
    }
    public String getTenHh() {
        return this.tenHh;
    }
    
    public void setTenHh(String tenHh) {
        this.tenHh = tenHh;
    }
    public int getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    public int getDonGia() {
        return this.donGia;
    }
    
    public void setDonGia(int donGia) {
        this.donGia = donGia;
    }
    public int getTongTien() {
        return this.tongTien;
    }
    
    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }
    public Integer getTichDiem() {
        return this.tichDiem;
    }
    
    public void setTichDiem(Integer tichDiem) {
        this.tichDiem = tichDiem;
    }
    public String getTenNv() {
        return this.tenNv;
    }
    
    public void setTenNv(String tenNv) {
        this.tenNv = tenNv;
    }




}

