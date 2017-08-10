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
<title>Fetch Student</title>
</head>
<br>
<body>
<div id= "con">
<div id= "header">
<h1> STUDENTS LIST</h1>
</div>
<form>
<table align= "center">
<tr>
<th align="left">ID</th>
<th align="left">First Name</th>
<th align="left">Middle Name</th>
<th align="left">Last Name</th>
<th align="left">Father Name</th>
<th align="left">Date Of Birth</th>
<th align="left">Address</th>
<th align="left">MobileNo</th>
<th align="left">EMail</th>
<th align="left">Operation</th>
</tr>

<%

StudentService studentServiceObj = new StudentService();
List<Student> studentList = null;

studentList = studentServiceObj.fetchstudent();
for(Student studentObj:studentList){
	
	%>
	<tr>
	<td><%=studentObj.getID() %></td>
	<td><%=studentObj.getFirstName() %></td>
	<td><%=studentObj.getMiddleName() %></td>
	<td><%=studentObj.getLastName() %></td>
	<td><%=studentObj.getFatherName() %></td>
	<td><%=studentObj.getDateOfBirth() %></td>
	<td><%=studentObj.getAddress() %></td>
	<td><%=studentObj.getMobileNo() %></td>
	<td><%=studentObj.getEMail() %></td>
	<td><br><a href='editstudent.jsp?studentid=<%=studentObj.getID() %>'><input type="button" value=" Edit" class= "btn1 btn-primary"></a></td>
	<td><br><a href='deletestudent.jsp?studentid=<%=studentObj.getID()%>'><input type="button" value= "Delete" class= "btn1 btn-primary"></a></td>	
	</tr>
		
	<% 
}
%>
</table>
</form>
</div>
</body>
</html>