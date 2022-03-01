<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>

<body>

	<div class="container mt-3">
	
		<div class="row">
		
			<div class="col-md-6 offset-md-3">
			
				<h1 class="text-center mb-3">FILL THE EMPLOYEE DETAILS</h1>
				
				<form action="handle-employee" method="post">
				
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" aria-describedby="emailHelp"
						 name="name" placeholder="Enter your name">
					</div>
					
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" id="email" 
						 name="email" placeholder="Enter your email Id">
					</div>
					
					<div class="form-group">
						<label for="dob">DOB</label>
						<input type="date"  class="form-control" id="dob" 
						 name="dob" placeholder="Enter your dob">
					</div>
					
					<div class="form-group">
						<label for="age">Age</label>
						<input type="number"  class="form-control" id="age" 
						 name="age" placeholder="Enter your Age">
					</div>
					
					
					<div class="form-group">
						<label for="salary">Salary</label>
						<input type="text" class="form-control" id="salary" 
						 name="salary" placeholder="Enter your salary">
					</div>
					
					<div class="form-group">
						<label for="status">Status</label><br>
						<input type="radio" name="status" value="Yes"/>Yes<br>
						<input type="radio" name="status" value="No"/>No<br>
						
					</div>
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>
