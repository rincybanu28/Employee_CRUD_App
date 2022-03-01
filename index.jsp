<html>
<head>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
 
        @media only screen and (max-width:800px) {
            #no-more-tables tbody,
            #no-more-tables tr,
            #no-more-tables td {
                display: block;
                
            }
            
            #no-more-tables thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }
            #no-more-tables td {
                position: relative;
                padding-left: 50%;
                border: none;
                border-bottom: 1px solid #eee;
            }
            #no-more-tables td:before {
                content: attr(data-title);
                position: absolute;
                left: 6px;
                font-weight: bold;
            }
            #no-more-tables tr {
                border-bottom: 1px solid #ccc;
            }
        }
    </style>
</head>

<body>
    <section class="bg-light p-5">
        <h1 class="text-center mb-3" style="color:black">WELCOME TO LIST OF EMPLOYEES</h1><br>
        	<div class="table-responsive" id="no-more-tables">
        	<div class="container mt-3">
			<div class="row">
			  <div class="col-md-12">
           	 	<table class="table bg-white">
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
							      <th data-title="ID" scope="row" style="color:#008080">EMP ID${e.id }</th>
							      <td data-title="Employee Name">${e.name }</td>
							      <td data-title="E-mail">${e.email}</td>
							      <td data-title="DOB">${e.dob}</td>
							      <td data-title="Age">${e.age}</td>
							      <td data-title="Salary" class="font-weight-bold">&#x20B9; ${e.salary }</td>
							      <td data-title="Status">${e.status}</td>
							      
							      
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
	</div>
	
	
</section>	
</body>
</html>

