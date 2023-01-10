<%-- 
    Document   : adminViewSchedule
    Created on : Nov 29, 2021, 6:52:48 AM
    Author     : lalu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
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
    <form action="adminScheduleServlet" method="Post" id="aligned">
        <label>Month</label> 
        <select name="month" id="month">
            <option value="January">January</option>
            <option value="February">February</option>
            <option value="March">March</option>
            <option value="April">April</option>
            <option value="May">May</option>
            <option value="June">June</option>
            <option value="July">July</option>
            <option value="August">August</option>
            <option value="September">September</option>
            <option value="October">October</option>
            <option value="November">November</option>
            <option value="December">December</option>
        </select>
        <br>
        <label>Year</label> 
        <select name="year" id="year">
            <option value="2019">2019</option>
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2022">2022</option>
            <option value="2023">2023</option>
            <option value="2024">2024</option>
        </select>
        <br>
        <input type="submit" value="View Schedule">
        <br>
    </form>  
</html>
