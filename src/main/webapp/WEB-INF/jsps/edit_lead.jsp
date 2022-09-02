<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="layout.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Edit Lead</title>
</head>
<body >
	<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-body rounded mt-2">
			<h2 class="text-center">UPDATE LEAD</h2>
			<hr>
			<p>${msg}</p>
			<form class="row g-3" action="update" method="post">
			<div class="col-md-6">
					<label for="id" class="form-label">Id</label> <input
						type="text" class="form-control" name="id"
						value="${leads.id}" readonly="readonly">
				</div>
				<div class="col-md-6">
					<label for="firstName" class="form-label">First Name</label> <input
						type="text" class="form-control" name="firstName"
						value="${leads.firstName}">
				</div>
				<div class="col-md-6">
					<label for="lastName" class="form-label">Last Name</label> <input
						type="text" class="form-control" name="lastName"
						value="${leads.lastName}">
				</div>
				<div class="col-md-6">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" name="email" value="${leads.email}">
				</div>
				<div class="col-md-12">
					<label for="mobile" class="form-label">Mobile</label> <input
						type="text" class="form-control" name="mobile"
						value="${leads.mobile}">
				</div>

				<div class="col-md-12">
					<label for="leadSource" class="form-label">Lead Source</label>
					 <select
						name="leadSource"  class="form-select" >
						<option>TV Ads</option>
						<option>Social Sites</option>
						<option>Email</option>
						<option>News</option>
						<option>By Friend</option>
					</select>
				</div>

				<div class="col-sm-2">
					<button type="submit" class="btn btn-primary">Update Lead</button>
				</div>


			</form>
		</div>
	</div>
</body>
</html>