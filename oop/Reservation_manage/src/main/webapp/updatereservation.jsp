<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateDetails</title>
<link rel="stylesheet" href="design/css/update.css">
</head>
<body>

<!-- create java code to catch passing details from url -->
<!-- paramName(ViewReservation)=getParameter name -->

<%
String id =request.getParameter("id");
String name =request.getParameter("name");
String phone =request.getParameter("phone");
String email =request.getParameter("email");
String nic =request.getParameter("nic");
String licenseNo =request.getParameter("licenseNo");
String hireType =request.getParameter("hireType");
String vehicle =request.getParameter("vehicle");
String pickupDate =request.getParameter("pickupDate");
String returnDate =request.getParameter("returnDate");

%>

<h1>Update Reservation Account</h1>

<!-- create form with update details -->

 <form action="update" method="post">
 
        <style>
        body  {
           background-color: #e6fffa;
           ;  
         </style>
 
 
      <b><label for="id">ID</label></b><br>  
      <input type="text" name="Id" value="<%=id %>"readonly><br><!-- pass java variable to input tag as a value 
      and display update page with client details-->
      
      <b><label for="name">Name </label></b><br> 
      <input type="text" name="Name" value="<%= name%>"><br>
      
      <b><label for="phone">Phone Number</label></b><br> 
      <input type="text" name="Phone" value="<%=phone %>"><br>
      
      <b><label for="email">Email</label></b><br>  
      <input type="text" name="Email" value="<%=email %>"><br>
      
      <b><label for="nic">NIC Number</label></b><br>  
      <input type="text" name="Nic" value="<%=nic %>"><br>
      
      <b><label for="lino">License Number</label></b><br>  
      <input type="text" name="Lino" value="<%=licenseNo %>"><br>
      
      <b><label for="type">Hire Type</label></b><br> 
      <input type="text" name="Hiretype" value="<%= hireType%>"><br>
      
      <b><label for="vehicles">Vehicle </label></b><br> 
      <input type="text" name="Vehicle" value="<%=vehicle %>"><br>
      
       <b><label for="pkd">Pickup Date</label></b><br>  
      <input type="date" name="Pickupdate" value="<%= pickupDate%>"><br>
      
       <b><label for="rtd">Return Date</label></b><br> 
      <input type="date" name="Returndate" value="<%=returnDate %>"><br>
      
      
      <input type="submit" name="submit" value="UPDATE">
     </form>
</body>
</html>