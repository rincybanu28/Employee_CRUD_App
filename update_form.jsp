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
			
				<h1 class="text-center mb-3">UPDATE EMPLOYEE DETAILS</h1>
				
				<form action="${pageContext.request.contextPath}/handle-employee" method="post">
				
				<input type="hidden" value="${employee.id}" name="id" />
				
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" aria-describedby="emailHelp"
						 name="name" placeholder="Enter your name" value="${employee.name}">
					</div>
					
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" id="email" 
						 name="email" placeholder="Enter your email Id" value="${employee.email}">
					</div>
					
					<div class="form-group">
						<label for="dob">DOB</label>
						<input type="date" class="form-control" id="dob" 
						 name="dob" placeholder="Enter your dob" value="${employee.dob}">
					</div>
					
					
					<div class="form-group">
						<label for="salary">Salary</label>
						<input type="text" class="form-control" id="salary" 
						 name="salary" placeholder="Enter your salary" value="${employee.salary}">
					</div>
					
					<div class="form-group">
						<label for="status">Status</label><br>
						<input type="radio" name="status" value="yes" value="${employee.status}"/>Yes<br>
						<input type="radio" name="status" value="no" value="${employee.status}"/>No<br>
						
					</div>
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>