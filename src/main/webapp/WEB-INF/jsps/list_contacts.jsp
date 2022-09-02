<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="layout.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>Leads</title>
</head>
<body>

	<div class="container-fluid">
		<div class="flex-sm-row g-2 ">
			<div class="p-2 d-flex justify-content-between">
				<div class="bg-body p-2 border fw-bold">All Contacts</div>
				<div class="p-1">
					<form action="compose" method="post">
						<input class="form-control" hidden="true" name="email" >
						<button class="btn btn-outline-success" type="submit">Send Service
							Email</button>
					</form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="table table-responsive bg-body">
				<table class="table table-bordered table-hover">
					<tr style="background-color: #007978;" class="text-light">
						<th>Id</th>
						<th>Full Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Lead Source</th>
						<th>Action</th>
						<th>Action</th>
						<th>Action</th>

					</tr>
					<c:forEach items="${contacts}" var="contact">
						<tr>
							<td>${contact.id}</td>
							<td><a href="findContactById?id=${contact.id}">${contact.firstName} ${contact.lastName}</a></td>
							<td>${contact.email}</td>
							<td>${contact.mobile}</td>
							<td>${contact.contactSource}</td>
							<td><a href="findContactById?id=${contact.id}" class="btn btn-primary">Edit</a></td>
							<td><a href="deleteContactById?id=${contact.id}" class="btn btn-danger">Delete</a></td>
							<td><a href="billsById?id=${contact.id}" class="btn btn-warning">Billing</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</div>
</body>
</html>