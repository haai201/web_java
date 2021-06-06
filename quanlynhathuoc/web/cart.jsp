<%-- 
    Document   : cart
    Created on : Jun 2, 2021, 5:44:55 PM
    Author     : nhadu
--%>

<%@page import="java.sql.ResultSet"%>
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
            
            String MaNV = (String) session.getAttribute("MaNV");
            String id_sp = request.getParameter("id_sp");
            int quantity;
            xuly tbl = new xuly();
            tbl.id_user = MaNV;
            tbl.maHH = id_sp;
            ResultSet qr = tbl.cart();
            if( qr.next()){
                qr.last();
                quantity = qr.getInt("SoLuong") + 1 ;
                tbl.soluong = quantity;
                tbl.updateCart();
                
                
            }
            else {
                tbl.soluong = 1;
                tbl.addCart();
            }
            
            String redirectURL = "hoadon.jsp";
                    response.sendRedirect(redirectURL);
            
        %>

    </body>
</html>
