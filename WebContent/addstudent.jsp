<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css">
<title>Add Student</title>
</head>
<br>
<br>

<body>
<div id= "text">
<div id= "container">
<div id= "header" >
<center><h1> ADD STUDENT</h1></center>
</div>

<form action="submitaddstudent.jsp">
<table align= "center">
<tr>
<th align="right" ><br> First Name    :</th>
<td><br><input type="text"  name="firstname"></td>
</tr>
<tr>
<th align="right"><br> Middle Name   :</th>
<td><br><input type="text"  name="middlename"></td>
</tr>
<tr>
<th align="right"> <br>Last Name     :</th>
<td><br><input type="text"  name="lastname"></td>
</tr>
<tr>
<th align="right"> <br>Father Name   :</th>
<td><br><input type="text"  name="fathername"></td>
</tr>
<tr>
<th align="right"> <br>Date Of Birth :</th>
<td><br><input type="text"  name="dateofbirth"></td>
</tr>
<tr>
<th align="right"> <br>Address       :</th>
<td><br> <input type="text"  name="address"></td>
</tr>
<tr>
<th align="right"><br> MobileNo      :</th>
<td><br><input type="text"  name="mobileno"></td>
</tr>
<tr>
<th align="right"><br> EMail         :</th>
<td><br><input type="text"  name="email"></td>
</tr>
<tr>
<th align="right"><br></th>
<td><br><input type="submit" value="Add Student" class= "btn btn-primary"> </td>
</tr>
</table>
<br>
</form>
</div>
</div>
</body>
</html>
