<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container-fluid">
		<!-- #####################################################  FIRST ROW START ############################################ -->
		<!-- FIRST ROW START-->
		<div class="row firstrow">

			<!-- COLUMN-1 START-->
			<!-- --------------------------COLUMN 1 START------------------------------------ -->
			<div class="col-md-2 col-md-offset-1 mar">
				<p>Contact Us On +91 40 66217777</p>
			</div>
			<!-- COLUMN-1 END -->
			<!-- --------------------------COLUMN 1 END------------------------------------ ----->

			<!-- COLUMN-2 START-->
			<!-- --------------------------COLUMN 2 START------------------------------------ -->
			<div class="col-md-3 col-md-offset-5 mar">
				<div class="rightalign">
				<a href="#"><span class="glyphicon glyphicon-log-in"></span>SIGN
					IN</a> <a href="#"><span class="glyphicon glyphicon-user"></span>SIGN
					UP</a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-google-plus"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-envelope"></i></a>
					</div>
			</div>
			<!-- COLUMN-2 END -->
			<!-- --------------------------COLUMN 2 END------------------------------------ ---->

		</div>
		<!-- FIRST ROW END -->
		<!-- ###################################################  FIRST ROW END ########################################## -->
		<!-- ###################################################  SECOND ROW START ########################################## -->
		<!-- SECOND ROW START-->
		<div class="row">
			<!-- --------------------------COLUMN 1 START---------------------------------- ---->
			<div class="col-md-4 col-md-offset-1">
				<img src="images/logo.png" id="image" alt="">
			</div>
			<!-- --------------------------COLUMN 1 END------------------------------------ ---->

			<!-- --------------------------COLUMN 2 START------------------- ---->
			<div class="col-md-6"
				style="padding-top: 12px; font-weight: bold; color: grey">
				<ul class="nav nav-pills rightalign">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">ELECTROINCS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link1</a></li>
							<li><a href="#">link2</a></li>
							<li><a href="#">link3</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">MEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link4</a></li>
							<li><a href="#">link5</a></li>
							<li><a href="#">link6</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">WOMEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link7</a></li>
							<li><a href="#">link8</a></li>
							<li><a href="#">link9</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">BABY & KIDS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link10</a></li>
							<li><a href="#">link11</a></li>
							<li><a href="#">link12</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">HOME & FURNITURE <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link13</a></li>
							<li><a href="#">link14</a></li>
							<li><a href="#">link15</a></li>
						</ul></li>
				</ul>

			</div>
			<!-- --------------------------COLUMN 2 END------------------- ---->
		</div>
		<!-- SECOND ROW END -->
		<!-- ###################################################  SECOND ROW END ########################################## -->
		<!-- ###################################################  THIRD ROW START ########################################## -->
		<!-- THIRD ROW -->
		<div class="row thirdrow">
			<!-- --------------------------COLUMN 1 START------------------- ---->
			<div class="col-md-5 col-md-offset-1">
				<p class="maintext">NEW ACCOUNT / SIGN IN</p>
			</div>
			<!-- --------------------------COLUMN 1 END------------------- ---->

			<!-- --------------------------COLUMN 2 START------------------- ---->
			<div class="col-md-5 x">
				<div class="rightalign">
				<a href="#">HOME</a>/ <a href="#">NEW ACCOUNT</a>/ <a href="#">SIGN
					IN</a>
					</div>
			</div>
			<!-- --------------------------COLUMN 2 END------------------- ---->
		</div>
		<!-- THIRD ROW END -->
		<!-- ###################################################  THIRD ROW END ########################################## -->
		<!-- ###################################################  FOURTH ROW START ########################################## -->
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="col-md-6">
					<br> <br> <br>
					<hr>
					<h2 class="fourthmaintext">NEW ACCOUNT</h2>
					<p class="fourthinfotext">Not our registered customer yet?</p>
					<br> <br>
					<p class="">With registration with us new world of fashion,
						fantastic discounts and much more opens to you! The whole process
						will not take you more than a minute!</p>
					<p class="">If you have any questions, please feel free to
						contact us, our customer service center is working for you 24/7.</p>
					<hr>
					<form action="CustomerRegister" method="post">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								name="name">
						</div>
						<div class="form-group">
							<label>Email</label> <input type="text" class="form-control"
								name="email">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control" name="password">
						</div>
						<div style="text-align: center">
							<button type="submit" class="btn btn-success"
								style="background-color: white; color: green; align: center">
								<span class="fa fa-envelope-o"></span> REGISTER
							</button>
						</div>
					</form>

					<%
						String str = (String)request.getAttribute("str");
						if (str != null) {
							if (str.equals("Y")) {
								
					%>

					<div class="alert alert-success">Registration Successful!!</div>

					<%
					session.invalidate();
						} else {
					%>
					<div class="alert alert-danger">Registration UnSuccessful!!</div>

					<%
					session.invalidate();
						}
						}
					%>

					<hr>
				</div>
				<div class="col-md-6">
					<br> <br> <br>
					<hr>
					<h2 class="fourthmaintext">SIGN IN</h2>
					<p class="fourthinfotext">Already our customer?</p>
					<br> <br>

					<p>Get access to your Orders, Wishlist and Recommendations.
					<hr>
					<form action="CustomerLogin" method="post">
						<div class="form-group">
							<label>Email</label> <input type="text" class="form-control"
								name="email">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control" name="password">
						</div>
						<div style="text-align: center">
							<button type="submit" class="btn btn-success"
								style="background-color: white; color: green; align: center">
								<span class="fa fa-envelope-o"></span> LOG IN
							</button>
						</div>
					</form>
					<%
						String stl = (String)request.getAttribute("stl");
						if (stl != null) {
							if (stl.equals("N")) {
								
					%>
					<div class="alert alert-danger">Invalid Credentials!!</div>

					<%
					
						}
						}
					%>
					<hr>
				</div>
			</div>
		</div>

		<!-- ###################################################  FOURTH ROW END ########################################## -->

		<!-- #################################################  SIXTH ROW START ########################################## -->
		<div class="row" style="background-color: grey;padding-bottom: 10px">
			<div class="col-md-10 col-md-offset-1">
				<div class="container-fluid" style="padding-left: 0px;">


					<div class="col-md-3 sixthrow">
						<h5>ABOUT US</h5>
						<p>pellentesque habitant morbi tristique senectus et netus et
							malesuada fames ac turpis egestas</p>
							<hr>
							<h5>JOIN OUR MONTHLY NEWSLETTER</h5>
							<form class="form-inline">
							<div class="form-group">
							<input type="text" class="form-control"
								name="letter">
								<button type="submit"><span class="fa fa-envelope-o"></span></button>
								</form>
						</div>
					</div>
					<div class="col-md-3 sixthrow">
						<h5>BLOG</h5>
						<a href="#">
							<h5>
								<img src="images/detailsquare1.jpg" width="45" height="45"
									class=""> BLOG POST NAME
							</h5>
						</a> <a href="#">
							<h5>
								<img src="images/detailsquare1.jpg" width="45" height="45"
									class=""> BLOG POST NAME
							</h5>
						</a> <a href="#">
							<h5>
								<img src="images/detailsquare1.jpg" width="45" height="45"
									class=""> VERY VERY LONG BLOG POST NAME
							</h5>
						</a>
					</div>
					<div class="col-md-3 sixthrow" style="color:white">
						<h5>CONTACT</h5>
						<y>TECHASPECT SOLUTIONS PVT. LTD.<br>
						PLOT NO. 38, N HEIGHTS, 3RD FLOOR<br>
						HITECH CITY PHASE 2,<br>
						MADHAPUR<br>
						HYDERABAD, TELANGANA-<br>
						500081<br>
						<b>INDIA</b></y>
						<br>
						<button class="btn btn-success" style="margin-top: 5px">GO TO CONTACT PAGE</button>

					</div>
					<div class="col-md-3">HELLO</div>

				</div>
			</div>


		</div>
		<!-- #################################################  SIXTH ROW END ########################################## -->

		<!-- #################################################  SEVENTH ROW START ########################################## -->
		<div class="row"
			style="background-color: black; padding-top: 50px; padding-bottom: 50px">
			<div class="col-md-10 col-md-offset-1">
				<h6>@2018.Techaspect Solutions Private Limited.</h6>

			</div>
		</div>


		<!-- #################################################  SEVENTH ROW END ########################################## -->

	</div>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>