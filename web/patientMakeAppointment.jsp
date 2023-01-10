<%-- 
    Document   : patientMakeAppointment
    Created on : Nov 28, 2021, 7:09:55 PM
    Author     : lalu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
            <li><a href="patientHub.jsp">Patient Home</a></li>
            <li><a href="patientViewAppointment.jsp">View Appointment</a></li>
            <li><a href="patientMakeAppointment.jsp">Make An Appointment</a></li>
            <li><a href="displayPatient.jsp">My Information</a></li>
        </ul>
    </body>
    <form action="patientMakeAppointmentServlet" method="Post" id="aligned">
        
        <label>Chiropractor</label> 
        <select name="chiro" id="chiro">
            <option value="2343">Jack Thompson</option>
            <option value="4539">Reggie Eri</option>
            <option value="5394">Carley Thomas</option>
            <option value="5648">Sarah Neson</option>
            <option value="5793">Oliver Terry</option>
            <option value="7650">Donald Charles</option>
            <option value="8767">Ferris Bueller</option>
            <option value="8910">Lara Carter</option>
        </select>
        <br>
        <label>Appointment Number</label>
        <input type="text" name="apnum"><br>
        <label>Month</label>
        <input type="text" name="month"><br>
        <label>Day</label>
        <input type="text" name="day"><br>
        <label>Year</label>
        <input type="text" name="year"><br>
        <input type="submit" value="Book Appointment"><br>
        <br>
        

    </form>
</html>
