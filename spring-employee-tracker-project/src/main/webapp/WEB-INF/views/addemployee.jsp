<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
     <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isELIgnored="false" %>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		
		.error
			{
			color: red;
			}
	</style>
</head>
<body>
		<div style="text-align:center">
		<h1>EMPLOYEE SEARCH LIST SCREEN</h1>
		</div>
		<form:form action="${contextRoot}/addemployee" method="post" modelAttribute="addemployee">
		
		Emp no(*)   <form:input path="emp_id"  placeholder="Employee id"/>
		<form:errors path="emp_id" cssClass="error"/><br><br>
		First Name(*)    <form:input path="first_name" placeholder="first name"/>
		<form:errors path="first_name" cssClass="error"/><br><br>
		Mobile num(*)    <form:input path="mobile_num" placeholder="TextBox"/>
		<form:errors path="mobile_num" cssClass="error"/><br><br><br><br>
		Date of birth(*)   <form:input path="dob" placeholder="yyyy/mm/dd"/>
		<br><br>
		Office mail(*)    <form:input path="office_mail" placeholder="office mail"/>
				<form:errors path="office_mail" cssClass="error"/>
		<br><br>
		Joining date(*)    <form:input path="doj" placeholder="yyyy/mm/dd"/><br><br>
		Post(*)   <form:input path="post_name" placeholder="post"/>
		<form:errors path="post_name" cssClass="error"/><br><br>
		Basic pay(*)    <form:input path="basic_pay" placeholder="basic pay"/>
		<form:errors path="basic_pay" cssClass="error"/><br><br>
		Pan Card no   <form:input path="pan_num" placeholder="pan card number"/>
		<form:errors path="pan_num" cssClass="error"/><br><br>
		Permanent Address  <form:input path="permanent_address" placeholder="permanent number"/>
		<form:errors path="permanent_address" cssClass="error"/><br><br>
		Last name(*)    <form:input path="last_name" placeholder="Last name"/>
		<form:errors path="last_name" cssClass="error"/><br><br>
		Email personal(*)   <form:input path="email_id" placeholder="Personal email"/>
		<form:errors path="email_id" cssClass="error"/><br><br>
		Employee level  <form:input path="emp_level" placeholder="Employee level"/>
		<form:errors path="emp_level" cssClass="error"/><br><br>
		Blood Group    <form:input path="blood_group" placeholder="blood group"/>
		<form:errors path="blood_group" cssClass="error"/><br><br>
		House allowance    <form:input path="house_allowance" placeholder="TextBox"/>
		<form:errors path="house_allowance" cssClass="error"/><br><br>
		Aadhar card no   <form:input path="aadhar_num" placeholder="TextBox"/>
		<form:errors path="aadhar_num" cssClass="error"/><br><br>
		Present Address  <form:input path="present_address" placeholder="TextBox"/>
		<form:errors path="present_address" cssClass="error"/><br><br>
		
		
		<button type="submit">Add Employee</button>
		
		
		</form:form>

</body>
</html>