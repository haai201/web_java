
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
            if ( request.getParameter("pas_Old") != null && request.getParameter("pas_New") != null && request.getParameter("re_pas_New") != null ){
                String password = request.getParameter("pas_New");
                String user = (String) session.getAttribute("user");
                xuly tbl = new xuly();
                tbl.password = password;
                tbl.user = user;
                tbl.changePassword();
                
                
                session.invalidate();
                String redirectURL = "http://localhost:8080/quanlynhathuoc/faces/index.jsp";
                response.sendRedirect(redirectURL);
            }
        %>
    </body>
</html>

