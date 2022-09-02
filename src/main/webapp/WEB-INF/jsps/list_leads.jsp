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

	<div class="container">
		<div class="flex-sm-row g-2 ">
			<div class="p-2 d-flex justify-content-between">
				<div class="bg-body p-2 border fw-bold">All Leads</div>
				<a href="lead" class="p-2 btn btn-outline-primary">Create Lead</a>
			</div>
		</div>

		<div class="row">
			<div class="table table-responsive bg-body">
				<table class="table table-bordered table-hover">
					<tr style="background-color: #007978;" class="text-light">
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Lead Source</th>

					</tr>
					<c:forEach items="${leads}" var="leads">
						<tr>
							<td>${leads.id}</td>
							<td><a href="findById?id=${leads.id}">${leads.firstName}</a></td>
							<td>${leads.lastName}</td>
							<td>${leads.email}</td>
							<td>${leads.mobile}</td>
							<td>${leads.leadSource}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</div>
</body>
</html>