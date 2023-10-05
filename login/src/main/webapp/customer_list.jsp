<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>

<html>
<head>
<title>Customer</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
%>


	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #3e4145">
			

			<ul class="navbar-nav">
				<li><a href="welcome.jsp"
					class="nav-link">Back to Home page</a></li>
				<li><a href="<%=request.getContextPath()%>/List"
					class="nav-link">Show Customer list</a></li>
				<li><a href="new_form.jsp" class="nav-link">Add Customer</a></li>	
					
			</ul>
			
		</nav>
	</header>
	<br>

	<div class="row">
		

		<div class="container">
			<h3 class="text-center">List of Customer</h3>
			<hr>
			<br>
			
        <div class="card-body">
           <form action="List" method="POST" class="form-inline">
              <div class="form-group mx-sm-3 mb-2">
                  <input type="text" class="form-control" id="search" name="search" placeholder="Search Name" required>
              </div>
                  <button type="submit" class="btn btn-primary mb-2">Search</button>
                 </form>
          </div>		
			
			
			
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Short name</th>
						<th>Category</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="customer" items="${listCustomer}">

						<tr>
							<td><c:out value="${customer.id}" /></td>
							<td><c:out value="${customer.name}" /></td>
							<td><c:out value="${customer.sname}" /></td>
							<td><c:out value="${customer.category}" /></td>
							<td><c:out value="${customer.country}" /></td>
							
							<td><a href="Edit?id=<c:out value='${customer.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="Delete?id=<c:out value='${customer.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>