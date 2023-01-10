<%-- 
    Document   : chiroEditInfo
    Created on : Nov 27, 2021, 2:57:01 PM
    Author     : Jaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chiropractor Edit Information</title>
        <link rel="stylesheet" href="style.css">
        <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>
    </head>
    <body>
        <h1>Edit Information</h1>
         <ul>
                <li><a href="chiroHub.jsp">Patient Home</a></li>
                <li><a href="chiroViewAppointment.jsp">View Appointment</a></li>
                <li><a href ="#">Blank 2</a></li>
                <li><a href="displayChiro.jsp">My Information</a></li>
            </ul>
        
        <form method="post" action="chiroEditInfoServlet">
            <label>Chiropractor ID:</label><input type="text" placeholder="Chiropractor ID" name="chiroID" value =<%= d1.c1.getChiropractorID() %><br>
            <label>Password:</label> <input type="text" placeholder="Password" name="passwrd" value =<%= d1.c1.getChiropractorPW() %>><br>
            <label>First Name:</label> <input type="text" placeholder="First Name" name="firstName" value =<%= d1.c1.getChiropractorFirstName() %>><br>
            <label>Last Name:</label> <input type="text" placeholder="Last Name" name="lastName" value =<%= d1.c1.getChiropractorLastName() %>><br>
            <label>Email:</label> <input type="text" placeholder="Email" name="eml" value =<%= d1.c1.getChiropractorEmail() %>><br>
            <label>Phone:</label> <input type="text" placeholder="Phone" name="phne" value =<%= d1.c1.getChiropractorPhone() %>><br>
            <input type="submit" value="Update"><br>
        </form>
    </body>
</html>
