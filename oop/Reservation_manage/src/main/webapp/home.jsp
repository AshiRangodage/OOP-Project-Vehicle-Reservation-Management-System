<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
body{
	font-family: sans-serif;
	
}


.menu-bar{
	background-color:#00997a ;
}
.text{
	text-align: center;
}
.img1{
	position: absolute;
	top: 510px;
	
}

.menu-bar ul{
	display: inline-flex;
	list-style: none;
	color: white;
}
.menu-bar ul li{
	width: 120px;
	margin: 16px;
	padding: 10px;
}
.menu-bar ul li a{
	text-decoration: none;
	color: white;
}

.active,.menu-bar ul li:hover{

	background: #00cca3;
	border-radius: 3px;

}

.sub-menu-1{
	display: none;

}

.menu-bar ul li:hover .sub-menu-1 {

	display: block;
	position: absolute;
	background-color:#00997a ;
	margin-top: 15px;
	padding-left:-15px;
}

.menu-bar ul li:hover .sub-menu-1 ul{
	display: block;
	margin: 10px;
}

.menu-bar ul li:hover .sub-menu-1 ul li{
	width: 150px;
	padding: 10px;
	border-bottom: 1px dotted #fff;
	background: transparent;
	border-radius: 0;
	text-align: left;
}

.menu-bar ul li:hover .sub-menu-1 ul li:last-child {
	border-bottom: none;
}


.menu-bar ul li:hover .sub-menu-1 ul li a:hover {
	color: #008066;
}

.sub-menu-2{
	display: none;
}

.hover-me:hover .sub-menu-2{
	position: absolute;
	display: block;
	margin-top: -40px;
	margin-left: 140px;
	background-color: rgb(0, 100, 0);
	background-color:#00997a ;

}
.home1{

	width:100%;
	height:100%;
}
 .col1{
 
 	width:50%;
 	height:50%;
 }
 .home2{
 width:100%;
 height:100%;
 
 }

</style>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="testing.css"><meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body >


  
	<div class="menu-bar w3-teal">
<!--LOGO -->
		<img width="15%" height="10%" src="design/img/GORENT LOGO .png">
<div class="text">
	<ul>
		<li class="active"><a href="#"> Home</a></li>
		<li><a href="#">About Us</a></li>
		<li><a href="#">Contact Us</a></li>
		<li><a href="#">Services</a>
			<div class="sub-menu-1 w3-teal">
				<ul>
					<li><a href="ReservationCustomer.jsp">Rent A Vehicle</a></li>
					<li><a href="#">Make an Event Reservation</a></li>
					<li class="hover-me"><a href="#">Vehicle Owner </a> <i class='fas fa-angle-right' style='font-size:24px'></i>
						<div class="sub-menu-2 w3-teal">
							<ul>
							<li><a href="#">Add A Vehicle</a></li>
							<li><a href="#">Find Your Vehicle</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>

		</li>
		<li><a href="adminlog.jsp">Admin Login</a></li>
	</ul>

</div>
</div>


 
 <div class="img1">
 <div class="row">
 
 	<div class="col"></div>
    <div class="col-8">
 
 
 <center><h1 style="font-size:80px;">Welcome To Go Rent</h1> </center></div>
 <div class="col"></div>
 </div>
 
<div class="row">
    <div class="col"></div>
    <div class="col">
    <img class="home2" src="design/img/10109.jpg">
     </div>
    
    <div class="w-100"></div>
    
    <div class="col"></div>
    <div class="col"></div>
  </div>
  </div> 

</body>
</html>