<%-- 
    Document   : adminHub
    Created on : Oct 17, 2021, 5:41:54 PM
    Author     : Jaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="style.css">
        <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>
    </head>
    <body>
        <h1>Admin Hub</h1>
             <ul>
                <li><a href="adminHub.jsp">Admin Home</a></li>
                <li><a href="adminViewSchedule.jsp">View Schedule</a></li>
                <li><a href ="adminAddChiro.jsp">Add Chiropractors</a></li>
            </ul>
    </body>
</html>
