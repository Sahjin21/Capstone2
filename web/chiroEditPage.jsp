<%-- 
    Document   : ChiroEditPage
    Created on : Oct 8, 2021, 12:10:32 AM
    Author     : lalu
--%>
<%
    String an =request.getParameter("an");
    String cid =request.getParameter("cid");
    String cn =request.getParameter("cn");
    String pid =request.getParameter("pid");
    String pn =request.getParameter("pn");
    String month =request.getParameter("month");
    String day =request.getParameter("day");
    String year =request.getParameter("year");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Appointment</title>
    </head>
    <body>
        <form action="chiroEditServlet" method="POST" id="aligned">
            <h2>
            <label> Appointment Number: <%= an %></label><br>
            <label> Chiropractor ID: <%= cid %></label><br>
            <label> Chiropractor Name: <%= cn %></label><br>
            <label> Patient ID: <%= pid %></label><br>
            <label> Patient Name: <%= pn %></label><br>
            <input type="hidden" name="an" value =<%= an %>><br>
            <input type="hidden" name="cid" value =<%= cid %>><br>
            <input type="hidden" name="cn" value =<%= cn %>><br>
            <input type="hidden" name="pid" value =<%= pid %>><br>
            <input type="hidden" name="pn" value =<%= pn %>><br>
            <label>Month</label>
            <input type="text" name="month" value =<%= month %>><br>
            <label>Day</label>
            <input type="text" name="day" value=<%= day %>><br>
            <label>Year</label>
            <input type="text" name="year"value=<%= year %>><br>
            <input type="submit" value="Update"><br>
            </h2>
        </form>
            <a href="chiroViewAppointment.jsp">Back</a>
    </body>
</html>