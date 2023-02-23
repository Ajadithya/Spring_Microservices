<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee tracker home page</title>
<style type="text/css">
body{
text-align:center;
background-color:#E9F4F6;
}
/* <div style="text-align:center"> */
table{width:auto; margin:auto; }

td{border:1px solid black; padding:5px; border-collapse: collapse;text-align: center; background-color:#d4e6f1 }
th{width:300px ; border:1px solid black; background-color:#5499c7; height:50px}
span{color:green; font-weight: bold; font-family: sans-serif;font-size: large;}
a.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

<hr style="height:2px;border-width:0;color:gray;background-color:gray">
</style>

</head>
<body>
<div style="text-align:center">
<h1>EMPLOYEE SEARCH LIST SCREEN</h1>
</div>
<hr>
<%-- <h2><span>${message}</span></h2> --%>
<div align="center">
<form action="/search" method="post">
	Emp ID: <input type="number" id="emp_id" name="emp_id" placeholder="enter id"/> &nbsp
	Emp Name: <input type="text" id="first_name" name="first_name" placeholder="enter name"/>
	<button type="submit" value="submit">Search</button>
</form>
</div>
 <br>
<span><a href="${contextRoot}/addemployee" class="button">ADD AN EMPLOYEE</a></span><a href="${contextRoot}/export" class="button">DOWNLOAD</a>


<br></br>
<div align="center">
<table>
<tr>
<th bgcolor=#A9DFBF>EMPLOYEE</th>
<th bgcolor=#A9DFBF>CONTACT</th>
<th bgcolor=#A9DFBF>LEVEL AND POST</th>
<th bgcolor=#A9DFBF>ACTION</th>
<!-- <th>EMPLOYEE PHOTO</th> -->
</tr>

<c:forEach var="employee" items="${employees}">
<tr>
<td><h3>${employee.first_name} ${employee.last_name}</h3><br>#${employee.emp_id}</td>
<td><p>${employee.mobile_num}<br>${employee.email_id}</p></td>
<td>${employee.emp_level}<br>
${employee.post_name}
	</td>
<td><a href="${contextRoot}/addemployee/${employee.emp_id}">Edit </a> / <a href="/${employee.emp_id}">Delete </a>/<a href="${contextRoot}/history/${employee.emp_id}">History </a></td>
<!-- <td>substitute for a photo</td> -->
</tr>
</c:forEach>
</table>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp "Abishek and snehal are the best judges"
</div>

 
</body>
</html>