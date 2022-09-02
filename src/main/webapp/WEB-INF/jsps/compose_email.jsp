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
<title>Email</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10 offset-1 shadow-lg p-3 mb-5 bg-body rounded mt-2">
				<h2 class="text-center bg-success p-1 text-light">Compose Email</h2>
				<hr>
				<p>${msg}</p>
				<form action="sendEmail" method="post" class="row g-2">
					<div class="row mb-3">
						<label for="from" class="col-sm-2 col-form-label  fs-5">From:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control form-control-lg" name="from">
						</div>
					</div>
					<div class="row mb-3">
						<label for="to" class="col-sm-2 col-form-label  fs-5">To :</label>
						<div class="col-sm-10">
							<input type="email" class="form-control form-control-lg" name="to"
								value="${email}">
						</div>
					</div>
					<div class="row mb-3">
						<label for="subject" class="col-sm-2 col-form-label  fs-5">Subject
							:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control form-control-lg" name="subject">
						</div>
					</div>
					<div class="row mb-3">
						<label for="floatingTextarea" class="col-sm-2 col-form-label  fs-5">Body
							:</label>
						<div class="col-sm-10">
							<textarea class="form-control form-control-lg" name="body" rows="7"></textarea>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary  fs-5">Send Email</button>
						</div>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>