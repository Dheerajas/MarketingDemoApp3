<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Report</title>
</head>
<body>
	<div class="containner">
		<div class="row">
			<div class="col-sm-12">
				<div class="row bg-body shadow-lg p-3 mb-5 rounded mt-2">
					<div class="table table-responsive ">
						<table class="table">

							<tr class="bg-success">
								<th>Data</th>
								<td>Output</td>
							</tr>
							<tr>
								<th>Full Name</th>
								<td>${billing.firstName}${contacts.lastName}</td>
							</tr>

							<tr>
								<th>Email</th>
								<td>${billing.email}</td>
							</tr>
							<tr>
								<th>Mobile</th>
								<td>${billing.mobile}</td>
							</tr>
							<tr>
								<th>ProductName</th>
								<td>${billing.productName}</td>
							</tr>
							<tr>
								<th>Product Price</th>
								<td>${billing.price}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>