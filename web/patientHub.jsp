<%-- 
    Document   : patientHub
    Created on : Sep 10, 2021, 9:54:59 AM
    Author     : Jaru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Hub</title>
        <link rel="stylesheet" href="style.css">
        <jsp:useBean id="p1" scope="session" class="Business.Patient"/>
    </head>
    <body>
        <h1>Patient Hub</h1>
            <ul>
                <%
        session = request.getSession();             // Retrieves session
        String patID = p1.getPatientID();
        session.setAttribute("patID", patID); 
        %>
                <li><a href="patientHub.jsp">Patient Home</a></li>
                <li><a href="patientViewAppointment.jsp">View Appointment</a></li>
                <li><a href="patientMakeAppointment.jsp">Make An Appointment</a></li>
                <li><a href="displayPatient.jsp">My Information</a></li>
            </ul>
    </body>
</html>
