<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div class="container">
  <center>
  <h2>Your Reservation Details</h2>
   </center>          
  <table class="table table-hover">

 <!-- passing data to forEach loop -->
<!-- declare variables -->
<!-- Assign values to declared variables --> 
<c:forEach var="cus" items="${cusDetails}">

<tbody>
<tr>
    <th scope="row">1</th>
    <td>Client ID</td>
    <td>${cus.id}</td>
 </tr>
<tr>
    <th scope="row">2</th>
    <td>Client Name</td>
    <td>${cus.name}</td>
 </tr>
 <tr>
    <th scope="row">3</th>
    <td>Client Phone Number</td>
    <td>${cus.phone}</td>
 </tr>
 <tr>
    <th scope="row">4</th>
    <td>Client Email</td>
    <td>${cus.email}</td>
 </tr>
 <tr>
    <th scope="row">5</th>
    <td>Client NIC</td>
    <td>${cus.nic}</td>
 </tr>
 <tr>
    <th scope="row">6</th>
    <td>Client Driving License Number</td>
    <td>${cus.licenseNo}</td>
 </tr>
 <tr>
    <th scope="row">7</th>
    <td>Client Hire Type</td>
    <td>${cus.hireType}</td>
 </tr>
 <tr>
    <th scope="row">8</th>
    <td>Client Vehicle Type</td>
    <td>${cus.vehicle}</td>
 </tr>
 <tr>
    <th scope="row">9</th>
    <td>Client Pickup Date</td>
    <td>${cus.pickupDate}</td>
 </tr>
 <tr>
    <th scope="row">10</th>
    <td>Client Return date</td>
    <td>${cus.returnDate}</td>
 </tr>
 



</tbody>
</c:forEach>
 </table>
</div>
</body>
</html>