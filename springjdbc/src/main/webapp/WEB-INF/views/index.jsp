<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Form crud operation</title>
<style>
/* Style for the form container */
.form-container {
	max-width: 500px;
	margin: 0 auto;
	margin-top:150px;
	padding: 20px;
	background-color: #f2f2f2;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

/* Style for form input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

/* Style for submit button */
input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* Style for submit button when hovered */
input[type=submit]:hover {
	background-color: #45a049;
}

/* Style for form labels */
label {
	display: block;
	font-weight: bold;
	margin-bottom: 10px;
}

/* Media queries for responsive design */
@media only screen and (max-width: 600px) {
	.form-container {
		max-width: 100%;
	}
}
</style>
</head>
<body>
	<div class="form-container">
		<form:form action="submitForm" modelAttribute="user" method="post">
			<label for="name">Name:</label>
			<form:input type="text" path="name" id="name" name="name"
				placeholder="Enter your name..." />


			<label for="age">Age:</label>
			<form:input type="text" path="age" id="age" name="age"
				placeholder="Enter your age..." />


			<label for="password">Password:</label>
			<form:input type="password" path="password" id="password"
				name="password" placeholder="Enter your password..." />


			<input type="submit" value="submit"></input>
		</form:form>
	</div>
</body>
</html>