<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.training.service.StudentService"%>
    <%@page import="com.training.model.Student"%>
    <%@page import="java.util.*"%>
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css">
<title>Submit Student</title>
</head>
<br>
<br>

<body>
<div id= "container">
<div id= "header">
<h1> SUBMIT ADD STUDENT</h1>
</div>
</div>

<%
String firstName = request.getParameter("firstname");
String middleName = request.getParameter("middlename");
String lastName = request.getParameter("lastname");
String fatherName = request.getParameter("fathername");
String dateOfBirth = request.getParameter("dateofbirth");
String address = request.getParameter("address");
String mobileNo = request.getParameter("mobileno");
String eMail = request.getParameter("email");

Random rand = new Random();
int id = rand.nextInt(100);

Student studentObj = new Student();

studentObj.setFirstName(firstName);
studentObj.setMiddleName(middleName);
studentObj.setLastName(lastName);
studentObj.setFatherName(fatherName);
studentObj.setDateOfBirth(dateOfBirth);
studentObj.setAddress(address);
studentObj.setMobileNo(mobileNo);
studentObj.setEMail(eMail);
studentObj.setID(id);

StudentService studentServiceObj = new StudentService();
studentServiceObj.addStudent(studentObj);

%>
<%="Student Successfully Added" %><br>
<br>

<form action="fetchstudent.jsp">
<input type="submit" value="Fetch Students" class="btn btn-primary">
</form>



</body>
</html>