<%-- 
    Document   : patientEditInfo
    Created on : Nov 27, 2021, 3:38:42 PM
    Author     : Jaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Information</title>
        <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>Edit Information</h1>
        <ul>
            <li><a href="patientHub.jsp">Patient Home</a></li>
            <li><a href="patientViewAppointment.jsp">View Appointment</a></li>
            <li><a href="patientMakeAppointment.jsp">Make An Appointment</a></li>
            <li><a href="displayPatient.jsp">My Information</a></li>
        </ul>
        
        <form method="post" action="patientEditInfoServlet">
            <label>Patient ID:</label><input type="text" placeholder="Patient ID" name="patID" value =<%= d1.p1.getPatientID() %><br>
            <label>Password:</label> <input type="text" placeholder="Password" name="password" value =<%= d1.p1.getPatientPW() %>><br>
            <label>First Name:</label> <input type="text" placeholder="First Name" name="firstNme" value =<%= d1.p1.getPatientFirstName() %>><br>
            <label>Last Name:</label> <input type="text" placeholder="Last Name" name="lastNme" value =<%= d1.p1.getPatientLastName() %>><br>
            <label>Email:</label> <input type="text" placeholder="Email" name="emil" value =<%= d1.p1.getPatientEmail() %>><br>
            <label>Phone:</label> <input type="text" placeholder="Phone" name="phone" value =<%= d1.p1.getPatientPhone() %>><br>
            <input type="submit" value="Update"><br>
        </form>
    </body>
</html>
