package Enities;
// Generated 14-May-2020 18:06:50 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Nhanvien generated by hbm2java
 */
public class Nhanvien  implements java.io.Serializable {


     private String maNv;
     private String tenNv;
     private String cmnd;
     private Date ngaySinh;
     private String gioiTinh;
     private String diaChi;
     private int soDt;
     private String mail;
     private Set hoadonnhaps = new HashSet(0);
     private Set hoadonbans = new HashSet(0);
     private Set userses = new HashSet(0);

    public Nhanvien() {
    }

	
    public Nhanvien(String maNv, String tenNv, String cmnd, Date ngaySinh, String gioiTinh, String diaChi, int soDt, String mail) {
        this.maNv = maNv;
        this.tenNv = tenNv;
        this.cmnd = cmnd;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.soDt = soDt;
        this.mail = mail;
    }
    public Nhanvien(String maNv, String tenNv, String cmnd, Date ngaySinh, String gioiTinh, String diaChi, int soDt, String mail, Set hoadonnhaps, Set hoadonbans, Set userses) {
       this.maNv = maNv;
       this.tenNv = tenNv;
       this.cmnd = cmnd;
       this.ngaySinh = ngaySinh;
       this.gioiTinh = gioiTinh;
       this.diaChi = diaChi;
       this.soDt = soDt;
       this.mail = mail;
       this.hoadonnhaps = hoadonnhaps;
       this.hoadonbans = hoadonbans;
       this.userses = userses;
    }
   
    public String getMaNv() {
        return this.maNv;
    }
    
    public void setMaNv(String maNv) {
        this.maNv = maNv;
    }
    public String getTenNv() {
        return this.tenNv;
    }
    
    public void setTenNv(String tenNv) {
        this.tenNv = tenNv;
    }
    public String getCmnd() {
        return this.cmnd;
    }
    
    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }
    public Date getNgaySinh() {
        return this.ngaySinh;
    }
    
    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }
    public String getGioiTinh() {
        return this.gioiTinh;
    }
    
    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
    public String getDiaChi() {
        return this.diaChi;
    }
    
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    public int getSoDt() {
        return this.soDt;
    }
    
    public void setSoDt(int soDt) {
        this.soDt = soDt;
    }
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }
    public Set getHoadonnhaps() {
        return this.hoadonnhaps;
    }
    
    public void setHoadonnhaps(Set hoadonnhaps) {
        this.hoadonnhaps = hoadonnhaps;
    }
    public Set getHoadonbans() {
        return this.hoadonbans;
    }
    
    public void setHoadonbans(Set hoadonbans) {
        this.hoadonbans = hoadonbans;
    }
    public Set getUserses() {
        return this.userses;
    }
    
    public void setUserses(Set userses) {
        this.userses = userses;
    }




}


