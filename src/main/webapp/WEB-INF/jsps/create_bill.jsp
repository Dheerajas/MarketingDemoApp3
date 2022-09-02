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

<title>Bill</title>
</head>
<body >
	<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-body rounded mt-2">
			<h2 class="text-center">Billing</h2>
			<hr>
			<p>${msg}</p>
			<form class="row g-3" action="createBill" method="post">
			<div class="col-md-12">
					<input
						type="hidden" class="form-control" name="id"
						value="${contact.id}">
				</div>
				<div class="col-md-6">
					<label for="firstName" class="form-label">First Name</label> <input
						type="text" class="form-control" name="firstName"
						value="${contact.firstName}">
				</div>
				<div class="col-md-6">
					<label for="lastName" class="form-label">Last Name</label> <input
						type="text" class="form-control" name="lastName"
						value="${contact.lastName}">
				</div>
				<div class="col-md-12">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" name="email" value="${contact.email}">
				</div>
				<div class="col-md-12">
					<label for="mobile" class="form-label">Mobile</label> <input
						type="text" class="form-control" name="mobile"
						value="${contact.mobile}">
				</div>
				<div class="col-md-12">
					 <input
						type="hidden" class="form-control" name="productId"
						>
				</div>
				<div class="col-md-6">
					<label for="mobile" class="form-label">Product Name</label> <input
						type="text" class="form-control" name="productName"
						>
				</div>
				<div class="col-md-6">
					<label for="mobile" class="form-label">Price</label> <input
						type="text" class="form-control" name="price"
						>
				</div>

				<div class="col-sm-2">
					<button type="submit" class="btn btn-info">Generate Bill</button>
				</div>
				<div class="col-sm-2">
					<a href="contacts" class="btn btn-danger">Cancel</a>
				</div>

			</form>
		</div>
	</div>
</body>
</html>