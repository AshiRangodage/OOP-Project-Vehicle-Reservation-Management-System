<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body>

<div class="container">
  <center>
  <h2> Reservation Details</h2>
   </center>          
  <table class="table table-hover">

  <tbody>
<tr>
<th>Client ID</th>
<th>Client Name</th>
<th>Client Phone Number</th>
<th>Client Email</th>
<th>Client NIC</th>
<th>Client Driving License Number</th>
<th>Client Hire Type</th>
<th>Client Vehicle Type</th>
<th>Client Pickup Date</th>
<th>Client Return date</th>
<th>
	
</th>
<th>
</th>
</tr>
</tbody>

<!-- passing data to forEach loop -->
<!-- declare variables -->
<!-- Assign values to declared variables -->
<c:forEach var="cli" items="${rentDetails}">

<c:set var="id" value="${cli.id}"/>
<c:set var="name" value="${cli.name}"/>
<c:set var="phone" value="${cli.phone}"/>
<c:set var="email" value="${cli.email}"/>
<c:set var="nic" value="${cli.nic}"/>
<c:set var="licenseNo" value="${cli.licenseNo}"/>
<c:set var="hireType" value="${cli.hireType}"/>
<c:set var="vehicle" value="${cli.vehicle}"/>
<c:set var="pickupDate" value="${cli.pickupDate}"/>
<c:set var="returnDate" value="${cli.returnDate}"/>



<tr>
   
    <td>${cli.id}</td>
 

    <td>${cli.name}</td>

    <td>${cli.phone}</td>

    <td>${cli.email}</td>
 
    <td>${cli.nic}</td>

    <td>${cli.licenseNo}</td>
 
    <td>${cli.hireType}</td>
    
    <td>${cli.vehicle}</td>

    <td>${cli.pickupDate}</td>

    <td>${cli.returnDate}</td>
    <td>
    
    <!-- passing values to updatereservation.jsp using url -->
    <!-- Assign variable to rentupdate -->
  <c:url value="updatereservation.jsp" var="rentupdate">
  
  <!-- if need to pass declared variable value, put variable name into c tag  -->

  <c:param name="id" value="${id}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="phone" value="${phone}"/>
  <c:param name="email" value="${email}"/>
  <c:param name="nic" value="${nic}"/>
  <c:param name="licenseNo" value="${licenseNo}"/>
  <c:param name="hireType" value="${hireType}"/>
  <c:param name="vehicle" value="${vehicle}"/>
  <c:param name="pickupDate" value="${pickupDate}"/>
  <c:param name="returnDate" value="${returnDate}"/>
  </c:url>
  
  <!-- put c tag url variable name to  a tag -->
  <a href="${rentupdate}">
  <!-- Create a update button -->
  <button type=submit >Update</button>
  </a>
    </td>
    
   <td>
   <c:url value="deletereservation.jsp" var="rentdelete">

  <c:param name="id" value="${id}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="phone" value="${phone}"/>
  <c:param name="email" value="${email}"/>
  <c:param name="nic" value="${nic}"/>
  <c:param name="licenseNo" value="${licenseNo}"/>
  <c:param name="hireType" value="${hireType}"/>
  <c:param name="vehicle" value="${vehicle}"/>
  <c:param name="pickupDate" value="${pickupDate}"/>
  <c:param name="returnDate" value="${returnDate}"/>
  </c:url>
   
    <a href="${rentdelete}">
    <button type=submit >Delete</button>
    </a>
   </td>
    
 </tr>
 


  
	</c:forEach>
  </table>
  </div>
</body>
</html>