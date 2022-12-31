<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link rel="stylesheet" href="design/css/insert.css">
<title>createReservation-GoRent</title>
<style>
.tx{
text-align:center;
}
</style>

<style>
.img1 {
	position: relative;
	margin-left: 57%;
	margin-top: 10%;
	overflow: hidden;
}

.transbox {
	padding: 70px;
	/*width: 75%;*/
	background-color: #e6fffa;
	/*border: 1px solid black;*/
	border-radius: 10px;
	opacity: 0.7;
}

.box {
	width: 50%;
	position: absolute;
	margin-left: 12%;
	margin-bottom: 20%
}
body  {
           background-image: url("design/img/img9.jpg");
           background-color: #cccccc;
           background-size: cover;
           background-attachment: fixed;
         }
</style>
</head>
<body>

	<div class="w3-container w3-teal"></div>
		<div class="w3-container w3-teal">
		<div class="w3-container w3-teal"></div>
		<div class="w3-container">
			<img width="15%" height="10%" src="design/img/GORENT LOGO .png">
		</div>
		<center>
			<h1 class="tx"> Create Your Reservation Now.......</h1>
		</center>
		</div>
	<br>

	<a href="ReservationCustomer.jsp" button type="button" class="btn btn-outline-secondary"><i
		class='fas fa-arrow-left' style='font-size: 24px'></i>
		</button></a>

	<div class="box">
		<div class="transbox">
			<br> <br>
			</button>
			</a>
			<div class="fmi">
				<!-- create  insert form with details -->
				  <form action="insert" method="post">
     
       
         
      <b><label for="name">Name </label></b><br>
      <b><input type="text" name="name" placeholder="Your name..." required></b><br>
      
      <b><label for="phone">Phone Number</label></b><br> 
      <b><input type="text" name="phone" placeholder="Your phone number..." pattern="[0-9]{10}" required></b><br>
      
      <b><label for="email">Email</label></b><br>
      <b><input type="text" name="email" placeholder="Your email..."  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required></b><br>
       
      <b><label for="nic">NIC Number</label></b><br> 
      <b><input type="text" name="nic" placeholder="Your NIC number..." pattern="[0-9]{9}[V]{1}" required></b><br>
      
      <b><label for="lino">License Number</label></b><br>
      <b><input type="text" name="lino" placeholder="Your license number..." required></b><br>
       
      <b><label for="type">Hire Type</label></b><br>
      <b><select id="type" name="hiretype">
       <option value="Self Drive">Self Drive</option>
       <option value="Chauffer Drive">Chauffer Drive</option>
      </select></b><br>
      
      <b><label for="vehicles">Vehicle</label></b><br>
      <b><select id="vehicles" name="vehicle">
       <option value="Car">Car</option>
       <option value="Bus">Bus</option>
       <option value="Van">Van</option>
       <option value="Double Cab">Double Cab</option>
      </select></b><br>
      
      <b><label for="pkd">Pickup Date</label></b><br>
      <b> <input type="date" name="pickupdate" placeholder="give pickup date " required></b><br>
       
     <b><label for="rtd"> Return Date</label> </b><br>
     <b><input type="date" name="returndate" placeholder="give return date" required></b><br>
      
      
      <b><input type="submit" name="submit" value="Create Reservation"></b>
     
     </form>

               
			</div>
			<br> <br>
		</div>
	</div>

	
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>