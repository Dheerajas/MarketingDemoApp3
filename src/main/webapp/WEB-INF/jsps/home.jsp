<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Home</title>
</head>
<body>
	<div class="container-fluid">
		<div class="flex-sm-row g-2 ">
			<div class="p-2 d-flex justify-content-between"">
				<div class="p-1">Email: ds94596@gmail.com</div>
				<div class="bg-body p-1 border">Email: ds94596@gmail.com</div>
			</div> 

		</div>
		<div class="row g-4">
			<div class="col-sm-6 ">
				<div class="p-3 border bg-body vh-100">
					<p>Open Tasks</p>
					<div class="card border-success mb-3">
						<div class="card-header bg-transparent border-success">Task
							1</div>
						<div class="card-body text-success">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card border-success mb-3">
						<div class="card-header bg-transparent border-success">Task
							2</div>
						<div class="card-body text-danger">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card border-success mb-3">
						<div class="card-header bg-transparent border-success">Task
							3</div>
						<div class="card-body text-warning">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
				<div class="col-sm-6 ">
					<div class="p-3 border bg-body vh-100">
						<p>Daily Tasks</p>
						<div class="card border-success mb-3">
							<div class="card-header bg-transparent border-success">Task
								1</div>
							<div class="card-body text-danger">
								<h5 class="card-title">Success card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
						<div class="card border-success mb-3">
							<div class="card-header bg-transparent border-success">Task
								2</div>
							<div class="card-body text-info">
								<h5 class="card-title">Success card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
						<div class="card border-success mb-3">
							<div class="card-header bg-transparent border-success">Task
								3</div>
							<div class="card-body text-primary">
								<h5 class="card-title">Success card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>