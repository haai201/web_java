<%-- 
    Document   : cart1
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
            String id_sp = request.getParameter("MaNV");
            int quantity;
            xuly tbl = new xuly();
            tbl.id_user = MaNV;
            tbl.maHH = id_sp;
            ResultSet qr = tbl.guest();
            
                quantity = qr.getInt("MaNV");
                
                
            
            String redirectURL = "nhanvien.jsp";
                    response.sendRedirect(redirectURL);
        %>
    </body>
</html>
