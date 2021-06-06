/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xuly;

/**
 *
 * @author ADMIN
 */

import connectdb.connect;
import java.sql.*;
import java.util.Locale;


public class xuly {
    
    
    public String id_user;
    public String user;
    public String password;
    public String maHH;
    public int soluong;
    public int maNV;
    public String TenNV;
  
    
    
    
    public ResultSet login(){
        String sql = String.format("SELECT * FROM account WHERE Users = '%s' AND Password = '%s' ", user, password);
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
    public ResultSet insert(String MaHH, String TenHH, String MaNhaCC, String Mota ,  String GiaBan){
        String sql = String.format("INSERT INTO hanghoa (MaHH,TenHH,MaNhaCC,Mota,GiaBan) VALUES ('%s','%s','%s','%s',%d)", MaHH, TenHH, TenHH, MaNhaCC, Mota, GiaBan);
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
    public ResultSet cont(){
//        String sql = String.format("SELECT * FROM khohang k INNER JOIN hanghoa  h ON k.MaHH = h.MaHH ");
        String sql = String.format("SELECT *FROM (khohang INNER JOIN hanghoa ON khohang.MaHH = hanghoa.MaHH) INNER JOIN nhacungcap ON hanghoa.MaNhaCC = nhacungcap.MaNhaCC; ");
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
     public ResultSet bill(){

        String sql = String.format("SELECT khachhang.MaKH, khachhang.TenKH, khachhang.CMND, khachhang.SoDT, khachhang.DiaChi, khachhang.DiaChi, khachhang.TichDiem\n" +
"FROM khachhang;");
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
     public ResultSet mem(){

        String sql = String.format("SELECT *FROM nhanvien;");
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
     public ResultSet nhap(){

        String sql = String.format("SELECT *FROM hoadonnhap;");
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
     
     public ResultSet sell(){

        String sql = String.format("SELECT *FROM hoadonban;");
        Connection conn = connect.getConnect();
        ResultSet qt = null;
        try {
            Statement state=conn.createStatement();
            qt = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        finally {
        }
        return qt;
    }
    
    public ResultSet guest(){
        String sql = "SELECT * From nhanvien WHERE MaNV ="+id_user+" AND MaNV = "+maNV;
        Connection conn = connect.getConnect();
        ResultSet qr = null;
        try {
            Statement state=conn.createStatement();
            qr = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        return qr;
    }
   
    public ResultSet cart(){
        String sql = "SELECT * From cart WHERE MaNV ="+id_user+" AND MaHH = "+maHH;
        Connection conn = connect.getConnect();
        ResultSet qr = null;
        try {
            Statement state=conn.createStatement();
            qr = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        return qr;
    }
    public void addCart(){
        String sql = String.format("INSERT INTO cart(MaNV,MaHH,SoLuong) VALUES (%s,%s,%d)", id_user, maHH, soluong);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    public void updateCart(){
        String sql = String.format("UPDATE cart SET SoLuong = %d WHERE MaNV = %s AND MaHH = %s ", soluong,id_user, maHH);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    public ResultSet hoadon(){
        String sql = "SELECT * From cart c INNER JOIN hanghoa h ON c.MaHH=h.MaHH WHERE MaNV ="+id_user;
        Connection conn = connect.getConnect();
        ResultSet qr = null;
        try {
            Statement state=conn.createStatement();
            qr = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        return qr;
    }
    
    public void updateKhohang(){
        String sql = String.format("UPDATE khohang SET SoLuong = %d WHERE MaHH = '%s'", soluong, maHH);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    
    public ResultSet kho(String MaHH){
        String sql = "SELECT * From khohang WHERE MaHH = "+MaHH;
        Connection conn = connect.getConnect();
        ResultSet qr = null;
        try {
            Statement state=conn.createStatement();
            qr = state.executeQuery(sql);
        }
        catch(Exception ex){
        }
        return qr;
    }
    
    public void hoadonban(String MaHDB, String MaKH, String TenHH, int SoLuong, int DonGia, int TongTien, String MaNV, String TenNV ){
        String sql = String.format("INSERT INTO hoadonban (MaHDB,MaKH,TenHH,SoLuong,DonGia,TongTien,MaNV,TenNV) VALUES ('%s','%s','%s',%d,%d,%d,'%s','%s')", MaHDB, MaKH, TenHH, SoLuong, DonGia, TongTien, MaNV, TenNV);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    public void deleteAll( String MaNV){
        String sql = String.format("DELETE FROM cart WHERE MaNV = '%s'", MaNV);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    
    public void changePassword(){
        String sql = String.format("UPDATE account SET Password = '%s' WHERE account.Users = '%s'", password, user);
        Connection conn = connect.getConnect();
        try{
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        }
        catch (Exception ex){
        }
    }
    
}


