<%-- 
    Document   : processLogin
    Created on : 04-Jun-2020, 09:04:32
    Author     : ADMIN
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
            
            String user = request.getParameter("name");
            String password = request.getParameter("password");
            
            xuly tbl = new xuly();
            tbl.user = user;
            tbl.password = password ;
            ResultSet rs = tbl.login();
            
            if (rs.next()){
                rs.last();
                String role = rs.getString("role");
                String MaNV = rs.getString("MaNV");
                session.setAttribute("user", user);
                session.setAttribute("password", password);
                session.setAttribute("role", role );
                session.setAttribute("MaNV", MaNV );
                
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
                
            }
            else {
                String redirectURL = "login.jsp" ;
                response.sendRedirect(redirectURL);
                
                
                
            }
            %>
    </body>
</html>
