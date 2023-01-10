<%-- 
    Document   : monthlyScheduleViewer
    Created on : Nov 29, 2021, 7:30:55 AM
    Author     : lalu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monthly Schedule</title>
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
        <a href = "adminDeleteServlet?id=<%=an%>&pid=<%=pi%>"><button>cancel</button></a>
        <a href = "adminEditPage.jsp?an=<%=an%>&cid=<%=ci%>&cn=<%=cn%>&pid=<%=pi%>&pn=<%=pn%>&month=<%=month%>&day=<%=day%>&year=<%=year%>"><button>edit</button></a>
        <br>
        <%}
            }   %>
    </body>
</html>
