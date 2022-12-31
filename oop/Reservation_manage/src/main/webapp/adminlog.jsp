<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.containe {
	position: fixed;
}

.containe video {
	position: auto;
	z-index: 0;
}

.transbox {
	padding: 40px;
	/*width: 75%;*/
	background-color: #ffffff;
	/*border: 1px solid black;*/
	border-radius: 10px;
	opacity: 0.7;
}

.box {
	width: 40%;
	position: absolute;
	margin-top: 180px;
	margin-left: 30%;
}
</style>
</head>
<body>

	<div class="containe">
		<video id="containe" autoplay muted loop width="100%" height="200%">
			<source src="design/img/GORENT_LOGO_ANIMATION.mp4" type="video/mp4">
		</video>
	</div>
	<center>


		<div class="box">
			<div class="transbox">
				<br>
				<br>
				<form action="management.jsp" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1" class="font-weight-bold">Email
							address</label> <input type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" class="font-weight-bold">Password</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1" placeholder="Password">
					</div>
					<br>
					<button type="submit" class="btn btn-info">Logging</button>
				</form>
				<br>
				<br>
			</div>
		</div>

	</center>

</body>
</html>

