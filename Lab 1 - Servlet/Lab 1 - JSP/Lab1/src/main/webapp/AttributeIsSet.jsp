<%-- 
    Document   : AttributeIsSet
    Created on : 31 Mar 2024, 12:10:45 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        <% session.setAttribute("user", "Fouad Abdulameer");%>
        <a href="GetAttribute.jsp">Click here to get user name</a><br>
        <a href="MathematicsOperations.jsp">Results of mathematics operations</a>
    </body>
</html>
