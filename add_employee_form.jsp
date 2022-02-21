<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>


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
						<input type="date" onclick="ageCount()" class="form-control" id="dob" 
						 name="dob" placeholder="Enter your dob">
					</div>
					
					
					<div class="form-group">
						<label for="salary">Salary</label>
						<input type="text" class="form-control" id="salary" 
						 name="salary" placeholder="Enter your salary">
					</div>
					
					<div class="form-group">
						<label for="status">Status</label><br>
						<input type="radio" name="status" value="yes"/>Yes<br>
						<input type="radio" name="status" value="no"/>No<br>
						
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