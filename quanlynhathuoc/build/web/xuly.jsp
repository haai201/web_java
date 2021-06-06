<%-- 
    Document   : xuly
    Created on : Jun 24, 2020, 8:54:56 AM
    Author     : ADMIN88
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="xuly.xuly"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            if( request.getParameter("SLthem") != null && request.getParameter("SLcon") != null ){
                xuly tbl = new xuly();
                tbl.soluong = (Integer.parseInt(request.getParameter("SLthem")) + Integer.parseInt(request.getParameter("SLcon")));
                tbl.maHH = request.getParameter("maHH");
                tbl.updateKhohang();
                
                String redirectURL = "sanpham.jsp";
                response.sendRedirect(redirectURL);
                
            }
            
            if (request.getParameter("thanhtoan") != null && request.getParameter("maKH") != null){
                String maKH = request.getParameter("maKH");
                String maNV = (String) session.getAttribute("MaNV");
                String tenNV = (String) session.getAttribute("TenNV");
                String maHDB = RandomStringUtils.randomAlphabetic(12);
                
                xuly tbl = new xuly();
                tbl.id_user = (String) session.getAttribute("MaNV");
                ResultSet rs = tbl.hoadon();
                while (rs.next()){
                    String TenHH = rs.getString("TenHH");
                    int soluong = rs.getInt("SoLuong");
                    int dongia = rs.getInt("GiaBan");
                    int tongtien = soluong * dongia;
                    tbl.hoadonban(maHDB, maKH, TenHH, soluong, dongia, tongtien, maNV, tenNV);
                    
                    String MaHH = rs.getString("MaHH");
                    ResultSet qr = tbl.kho(MaHH);
                    qr.last();
                    tbl.soluong = qr.getInt("SoLuong") - rs.getInt("SoLuong");
                    tbl.maHH = MaHH;
                    tbl.updateKhohang();
                    
                    tbl.deleteAll(maNV);
               
                    
                
                }
                
                    String redirectURL = "hoadon.jsp";
                    response.sendRedirect(redirectURL); 
                
            }
        %>
    </body>
</html>
