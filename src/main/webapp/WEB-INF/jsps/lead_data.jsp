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
<title>Lead</title>
</head>
<body>
	<div class="container-fluid">
		<div class="flex-sm-row">
			<div class="p-2 d-flex mb-2 col-sm-12">
				<div class="p-1 bg-body me-auto">
					<a href="lead">back</a> ${leads.firstName} ${leads.lastName}
				</div>
				<div class="p-1">
					<form action="compose" method="post">
						<input class="form-control" hidden="true" name="email"
							value="${leads.email}">
						<button class="btn btn-outline-success" type="submit">Send
							Email</button>
					</form>
				</div>
				<div class="p-1">
					<form action="convertLead" method="post">
						<input class="form-control" type="search" hidden="true" name="id"
							value="${leads.id}">
						<button class="btn btn-outline-warning" type="submit">Convert</button>
					</form>
				</div>
				<div class="p-1">
					<a href="updateById?id=${leads.id}" class="btn btn-outline-primary">Edit</a>
				</div>
			</div>
		</div>
		<div class="col-sm-12">
			<div class="row bg-body shadow-lg p-3 mb-5 rounded mt-2">
				<div class="table table-responsive ">
					<table class="table">
					
						<tr class="bg-success">
							<th ></th>
							<td ></td>
						</tr>
						<tr>
							<th>Lead Owner</th>
							<td>ds04596@gmail.com</td>
						</tr>
						<tr>
							<th>First Name</th>
							<td>${leads.firstName}</td>
						</tr>
						<tr>
							<th>Last Name</th>
							<td>${leads.lastName}</td>
						</tr>
						<tr>
							<th>Email</th>
							<td>${leads.email}</td>
						</tr>
						<tr>
							<th>Mobile</th>
							<td>${leads.mobile}</td>
						</tr>
						<tr>
							<th>Lead Source</th>
							<td>${leads.leadSource}</td>
						</tr>

					</table>
				</div>
			</div>
		</div>
		</div>
</body>
</html>