<html>
<head>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>

	<div class="container mt-3">
	
		<div class="row">
		
			<div class="col-md-12">
			
				<h1 class="text-center mb-3" style="color:black;">WELCOME TO LIST OF EMPLOYEES</h1><br>
	
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Employee Name</th>
      <th scope="col">E-mail</th>
      <th scope="col">DOB</th>
      <th scope="col">Age</th>
      <th scope="col">Salary</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${employees }" var="e">
    <tr>
      <th scope="row">EMP ID${e.id }</th>
      <td>${e.name }</td>
      <td>${e.email}</td>
      <td>${e.dob}</td>
      <td>${e.age}</td>
      <td class="font-weight-bold">&#x20B9; ${e.salary }</td>
      <td>${e.status}</td>
      
 	  <td>
 	  <a href="delete/${e.id }"><i class="fas fa-trash-alt text-danger" style="font-size: 23px;"></i></a>
 	  &nbsp;&nbsp;&nbsp;&nbsp;
 	  <a href="update/${e.id }"><i class="fas fa-pen-fancy text-primary" style="font-size: 23px;"></i></a>
 	  </td> 
 	  
      </tr>
   </c:forEach>
  </tbody>
</table>


<div class="container text-center">
<a href="add-employee" class="btn btn-outline-success" style="font-weight:bold">Add Employee</a>
</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>

