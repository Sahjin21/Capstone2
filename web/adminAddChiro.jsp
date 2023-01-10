<%-- 
    Document   : adminAddChiro
    Created on : Nov 26, 2021, 2:38:50 PM
    Author     : Jaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Chiropractor</title>
        <link rel="stylesheet" href="style.css">
        <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>
    </head>
    <body>
        <h2>Add Chiropractor</h2>
        <ul> 
            <li><a href="adminHub.jsp">Admin Home</a></li>
            <li><a href="adminViewSchedule.jsp">View Schedule</a></li>
            <li><a href ="adminAddChiro.jsp">Add Chiropractors</a></li>    
        </ul>
        <form action="addChiropractorServlet" method="POST" id="aligned">
            <label>Chiropractor ID: </label> <input type="text" name="chiroID"><br>
            <label>Password: </label> <input type="text" name="pass"><br>
            <label>First Name: </label><input type="text" name="firstName"><br>
            <label>Last Name: </label><input type="text" name="lastName"><br>
            <label>Email: </label> <input type="text" name="email"><br>
            <label>Phone: </label> <input type="text" name="phone"><br> 
            <input type="submit" value="Enter"><br>
        </form>
        
        
    </body>
</html>
