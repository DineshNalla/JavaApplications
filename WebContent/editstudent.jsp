<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@page import="com.training.service.StudentService"%>
    <%@page import="com.training.model.Student"%>
     <%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css">
<title>Edit Student</title>
</head>
<br>
<br>

<body>
<div id= "text">
<div id= "container">
<div id= "header">
<h1> EDIT STUDENT</h1>
</div>

<%
String studentID = request.getParameter("studentid");

StudentService studentServiceObj = new StudentService();
Student studentObj = new Student();

studentObj = studentServiceObj.fetchStudent(Integer.parseInt(studentID));
%>

<form action="submiteditstudent.jsp">
<table align= "center">
<tr>
<th align="right"><br> First Name    :</th>
<td><br><input type="text" name="firstname" value='<%=studentObj.getFirstName() %>'></td>
</tr>
<tr>
<th align="right"><br> Middle Name    :</th>
<td><br><input type="text" name="middlename" value='<%=studentObj.getMiddleName() %>'><td>
</tr>
<tr>
<th align="right"><br> Last Name    :</th>
<td><br><input type="text" name="lastname" value='<%=studentObj.getLastName() %>'></td>
</tr>
<tr>
<th align="right"> <br>Father Name    :</th>
<td><br><input type="text" name="fathername" value='<%=studentObj.getFatherName() %>'></td>
</tr>
<tr>
<th align="right"><br> Date Of Birth    :</th>
<td><br><input type="text" name="dateofbirth" value='<%=studentObj.getDateOfBirth() %>'></td>
</tr>
<tr>
<th align="right"><br> Address    :</th>
<td><br><input type="text" name="address" value='<%=studentObj.getAddress() %>'></td>
</tr>
<tr>
<th align="right"><br> MobileNo    :</th>
<td><br><input type="text" name="mobileno" value='<%=studentObj.getMobileNo() %>'></td>
</tr>
<tr>
<th align="right"><br> EMail    :</th>
<td><br><input type="text" name="email" value='<%=studentObj.getEMail() %>'></td>
</tr>
<tr>
<th align="right"> </th>
<td><br><input type="submit" value="Edit Student" class="btn btn-primary"></td>
</tr>
</table>
<input type="hidden" name= "studentid" value='<%=studentID %>'/>
<br>
</form>
</div>
</div>
</body>
</html>