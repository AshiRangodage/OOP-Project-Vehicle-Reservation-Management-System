<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>deleteReservationDetails</title>
<link rel="stylesheet" href="design/css/delete.css">
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
<h1>Delete Reservation Account</h1>

        <style>
        body  {
           background-color: #e6fffa;
           ;  
         </style>
         <!-- create form with delete details -->
<form action="delete" method="post">
      <b><label for="id">ID</label></b><br> 
      <input type="text" name="Id" value="<%=id %>"readonly><br>
      
      <b><label for="name">Name</label></b><br>
      <input type="text" name="Name" value="<%= name%>"readonly><br>
      
      <b><label for="phone">Phone Number </label></b><br>
      <input type="text" name="Phone" value="<%=phone %>"readonly><br>
      
      <b><label for="email">Email</label></b><br> 
      <input type="text" name="Email" value="<%=email %>"readonly><br>
      
      <b><label for="nic">NIC Number</label></b><br>
      <input type="text" name="Nic" value="<%=nic %>"readonly><br>
      
      <b><label for="lino">License Number</label></b><br>
      <input type="text" name="Lino" value="<%=licenseNo %>"readonly><br>
      
      <b><label for="type">Hire Type</label></b><br> 
      <input type="text" name="Hiretype" value="<%= hireType%>"readonly><br>
      
      <b><label for="vehicles">Vehicle </label></b><br> 
      <input type="text" name="Vehicle" value="<%=vehicle %>"readonly><br>
      
       <b><label for="pkd">Pickup Date</label></b><br>
       <input type="date" name="Pickupdate" value="<%= pickupDate%>"readonly><br>
       
       <b><label for="rtd">Return Date</label></b><br>
       <input type="date" name="Returndate" value="<%=returnDate %>"readonly><br>
      
      
      <input type="submit" name="submit" value="DELETE">
     </form>

</body>
</html>