    <%-- 
    Document   : chiroViewAppointment
    Created on : Sep 16, 2021, 1:26:07 PM
    Author     : Jaru

--%>

<%@ page import="Business.Appointments"%>
<%@ page import="Business.AppointmentsList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
     <jsp:useBean id="d1" scope="session" class="Business.DbAccess"/>
     <body>
         <h1>View Appointment</h1>
        <ul>
            <li><a href="chiroHub.jsp">Chiropractor Home</a></li>
            <li><a href="chiroViewAppointment.jsp">View Appointment</a></li>
            <li><a href ="#">Blank 2</a></li>
            <li><a href="displayChiro.jsp">My Information</a></li>
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
        <a href = "chiroDeleteServlet?id=<%=an%>&cid=<%=ci%>"><button>delete</button></a>
        <a href = "chiroEditPage.jsp?an=<%=an%>&cid=<%=ci%>&cn=<%=cn%>&pid=<%=pi%>&pn=<%=pn%>&month=<%=month%>&day=<%=day%>&year=<%=year%>"><button>edit</button></a>
        <br>
        <%}
            }   %>
        
    </body>
</html>
