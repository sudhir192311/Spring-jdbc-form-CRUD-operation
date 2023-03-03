<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
	integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Getting Data from Database</title>
</head>
<style>
table, th, td {
	border: 1px solid black;
}
table,h1{
   text-align: center;
}
</style>
<body>
	<table class="table table-bordered">
	<h1>--Data Successfully Fetched--</h1>
		<thead class="thead-dark">
			<tr>
				<th>name</th>
				<th>age</th>
				<th>password</th>
				<th>update</th>
				<th>delete</th>
			</tr>
		</thead>
		<c:forEach var="user" items="${list}">

			<tr>
				<td>${user.name}</td>
				<td>${user.age}</td>
				<td>${user.password}</td>
				<td scope="col"><button type="button" class="btn btn-primary">
						<a class="text-white" href="editemp/${user.name}">Update</a>
					</button></td>
				<td scope="col"><button type="button" class="btn btn-danger">
						<a class="text-white" href="deleteemp/${user.name}">Delete</a>
					</button></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>