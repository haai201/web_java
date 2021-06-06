<%-- 
    Document   : logout
    Created on : Jun 6, 2021, 10:13:33 AM
    Author     : nhadu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        %>
    </body>
</html>
