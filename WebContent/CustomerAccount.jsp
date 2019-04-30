<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container-fluid">
		<!-- FIRST ROW START-->
		<%@ include file="Header1.jsp"%>
		<!-- FIRST ROW END --->

		<!-- SECOND ROW START-->
		<%@ include file="Header2.jsp"%>
		<!-- SECOND ROW END -->

		<!-- ###################################################  THIRD ROW START ########################################## -->
		<!-- THIRD ROW -->
		<div class="row thirdrow">
			<!-- --------------------------COLUMN 1 START------------------- ---->
			<div class="col-md-5 col-md-offset-1">
				<p class="maintext">NEW ACCOUNT</p>
			</div>
			<!-- --------------------------COLUMN 1 END------------------- ---->

			<!-- --------------------------COLUMN 2 START------------------- ---->
			<div class="col-md-5 x">
				<div class="rightalign">
					<a href="#">HOME</a>/ <a href="#">MY ACCOUNT</a>
				</div>
			</div>
			<!-- --------------------------COLUMN 2 END------------------- ---->
		</div>
		<!-- ###################################################  THIRD ROW END ########################################## -->
		<!-- ###################################################  FOURTH ROW START ########################################## -->
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="col-md-9">
					<br> <br> <br>
					<p class="fourthinfotext">Change your personal details or
						password here.</p>
					<br> <br>
					<p class="">Pellentesque habitant morbi tristique senectus et
						netus et malesuada fames ac turpis egestas</p>
					<br>
					<hr>
					<div class="container-fluid">
						<div class="fourthmaintext2">
							CHANGE PASSWORD<br>
						</div>
						<form>
							<br>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Old password</label> <input type="text"
											class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>New password</label> <input type="text"
											class="form-control">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Retype new password</label> <input type="text"
											class="form-control">
									</div>
								</div>
							</div>
							<div style="text-align: center">
								<button type="submit" class="btn btn-success"
									style="background-color: white; color: green; align: center">
									<span class="fa fa-envelope-o"></span> SAVE NEW PASSWORD
								</button>
							</div>
						</form>
					</div>
					<hr>
					<br> <br> <br>
					<div class="fourthmaintext2">
						PERSONAL DETAILS<br>
					</div>
					<form>
						<br>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>First Name</label> <input type="text"
										class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Last Name</label> <input type="text"
										class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Gender</label><br> <input type="radio"
										name="gender" value="male"> Male<br> <input
										type="radio" name="gender" value="female"> Female<br>
									<input type="radio" name="gender" value="other"> Other<br>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Address</label><br>
									<textarea rows="3" class="form-control"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label>CITY</label> <input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>ZIP</label> <input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>STATE</label> <input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Country</label> <input type="text" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Contact Number</label> <input type="text"
										class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label> <input type="text" class="form-control">
								</div>
							</div>
						</div>
						<div style="text-align: center">
							<button type="submit" class="btn btn-success"
								style="background-color: white; color: green; align: center">
								<span class="fa fa-envelope-o"></span> SAVE CHANGES
							</button>
						</div>
					</form>
					<br> <br>
				</div>
			</div>
		</div>
		<!-- ###################################################  FOURTH ROW END ########################################## -->
	
		<!---- LAST ROW START----->
		<%@ include file="Footer2.jsp"%>
		<!---- LAST ROW END----->


	</div>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>