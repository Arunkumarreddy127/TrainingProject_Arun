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
		<%@ include file="Header1.jsp"%>
		<%@ include file="Header2.jsp"%>
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
						String str = (String) request.getAttribute("str");
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
						String stl = (String) request.getAttribute("stl");
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

		<%@ include file="Footer1.jsp"%>
		<%@ include file="Footer2.jsp"%>
	</div>

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>