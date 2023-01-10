<%-- 
    Document   : patientViewAppointment
    Created on : Sep 10, 2021, 12:26:32 PM
    Author     : Jaru
--%>

<%@ page import="Business.Appointments"%>
<%@ page import="Business.AppointmentsList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient View Appointment</title>
        <link rel="stylesheet" href="style.css">
    </head>
     <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>

    <body>
        <h1>Appointment</h1>
        <ul>
            <li><a href="patientHub.jsp">Patient Home</a></li>
            <li><a href="patientViewAppointment.jsp">View Appointment</a></li>
            <li><a href="patientMakeAppointment.jsp">Make An Appointment</a></li>
            <li><a href="displayPatient.jsp">My Information</a></li>
        </ul>
        
        <% 
            int count = d1.aList.count;      
        %>
        <h2>Appointments: <%= count %></h2>
           <%
       {
           for (int x = 0; x<count; x++){
               String an = d1.aList.appArr[x].getAppointmentNumber();
               String ci = d1.aList.appArr[x].getChiroId();
               String cn = d1.aList.appArr[x].getChiroName();
               String pi = d1.aList.appArr[x].getPatId();
               String pn = d1.aList.appArr[x].getPatName();
               String dt = d1.aList.appArr[x].getMonth() + " " + d1.aList.appArr[x].getDay()+ " " + d1.aList.appArr[x].getYear();
               String month = d1.aList.appArr[x].getMonth();
               String day = d1.aList.appArr[x].getDay();
               String year = d1.aList.appArr[x].getYear();
       %>
        
       
        <br>
        <h2>Appointment Number: <%= an %></h2>
        <h2>Chiropractor ID: <%= ci %></h2>
        <h2>Chiropractor Name: <%= cn %> </h2>
        <h2>Patient ID: <%= pi %> </h2>
        <h2>Patient Name: <%= pn %></h2>
        <h2>Date: <%= dt %> </h2>
        <a href = "patientDeleteServlet?id=<%=an%>&pid=<%=pi%>"><button>cancel</button></a>
        <a href = "patientEditPage.jsp?an=<%=an%>&cid=<%=ci%>&cn=<%=cn%>&pid=<%=pi%>&pn=<%=pn%>&month=<%=month%>&day=<%=day%>&year=<%=year%>"><button>edit</button></a>
        <br>
        <%}
            }   %>
    </body>
</html>
