<%-- 
    Document   : processInsert
    Created on : Jun 6, 2021, 8:38:53 AM
    Author     : nhadu
--%>

<%@page import="xuly.xuly"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String company = request.getParameter("company");
            String info = request.getParameter("info");
            String price = request.getParameter("price");
  
            
            xuly tbl = new xuly();
                ResultSet rs = tbl.hoadon();
                while (rs.next()){
                    String MaHH = rs.getString("id");
                    String TenHH = rs.getString("name");
                    String MaNhaCC = rs.getString("company");
                    String Mota = rs.getString("info");
                    String GiaBan = rs.getString("price");
//            String MaHH = request.getParameter("id");
//            String TenHH = request.getParameter("name");
//            String MaNhaCC = request.getParameter("company");
//            String Mota = request.getParameter("info");
//            String GiaBan = request.getParameter("price");
                    tbl.insert(MaHH, TenHH, MaNhaCC, Mota, GiaBan);
 
                }
                
                    String redirectURL = "sanpham.jsp";
                    response.sendRedirect(redirectURL); 
                
            }
            %>>
    </body>
</html>
