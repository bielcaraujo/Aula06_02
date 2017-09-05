<%-- 
    Document   : teste
    Created on : 05/09/2017, 14:13:03
    Author     : a
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>Data do servidor usando scriptlet:</h2>
        <%
            Date now = new Date();
            out.print("<h3>"+now+"</h3>");
        %>
        <h2>Data do servidor utilizando expression:</h2>
        <h3><%=new Date()%></h3>
        <a href="form.jsp">Exercício form</a>
    </body>
</html>
