<%-- 
    Document   : createPatientAccount
    Created on : Nov 28, 2021, 5:39:54 PM
    Author     : lalu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
            <h2>Create an account</h2>
        <ul>
            <li><a href="index.jsp">Home</li>
            <li><a href ="#">About</li>
            <li class="login">
                <a href ="#" class="loginBtn">Login</a>
                    <div class="loginContent">
                        <a href="adminLoginPage.jsp">Admin</a>
                        <a href="chiroLoginPage.jsp">Chiropractor</a>
                        <a href="patientLoginPage.jsp">Patient</a>
                    </div>
            </li>
        </ul>
    </body>
    <form action="createPatientServlet" method="Post" id="aligned">
        <label>Patient ID</label>
            <input type="text" name="patId" placeholder="Patient ID" required ="required"><br>
        <label>Password</label>
            <input type="text" name="password" placeholder="Password" required ="required"><br>
        <label>First Name</label>
            <input type="text" name="fname" placeholder="First Name required ="required"><br>
        <label>Last Name</label>
            <input type="text" name="lname" placeholder="Last Name" required ="required"><br>
        <label>Email</label>
            <input type="text" name="email" placeholder="Email" required ="required"><br>
        <label>Phone Number</label>
            <input type="text" name="phone" placeholder="Phone Number" required ="required"><br>
        <input type="submit" value="Make Account">
    </form>
      

</html>
