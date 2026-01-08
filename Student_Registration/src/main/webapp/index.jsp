<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Db.ConnectionProvider"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>

<head>
<title>Student Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<style>
.bg-custom {
	background-color: #1b5e20;
}
</style>
<body style="background-color: #f2eded;">

	<!-- start navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Student</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Register</a></li>

				</ul>
				</li>

				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- end navbar -->
	
	<!-- form start -->
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header bg-primary">
						<h4 class="text-center text-white">Student Registration Form</h4>
					</div>
					<div class="card-body">
					
					<%
					String succMsg = (String)session.getAttribute("succMsg");
					String failedMsg = (String)session.getAttribute("failedMsg");
					if(succMsg!=null)
					{%>
						<h5 class="text-center"><%=succMsg %></h5>
					<%
					session.removeAttribute("succMsg");
					}
					if(failedMsg!=null)
					{%>
						<h5 class="text-center"><%=failedMsg %></h5>
					<%
					session.removeAttribute("failedMsg");
					}
					%>
					
						<form action="RegisterServlet" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									name</label> <input type="text" name="fname" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
								</label> <input type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Date
									of birth</label> <input type="date" name="dob" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Address
								</label>
								<textarea rows="3" cols=""  name="address" class="form-control" required></textarea>
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									No</label> <input type="number"  name="phone" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>

							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									name="flexRadioDefault" id="flexRadioDefault1" value="male"> <label
									class="form-check-label" for="flexRadioDefault1"> Male
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									name="flexRadioDefault" id="flexRadioDefault2" value="female" checked>
								<label class="form-check-label" for="flexRadioDefault2">
									Female </label>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1" required>
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" required> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- form end -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>
