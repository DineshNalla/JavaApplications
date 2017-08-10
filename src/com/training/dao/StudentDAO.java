package com.training.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.training.model.Student;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

	public void addStudent(Student studentObj){
		
		 try {
		            Class.forName("com.mysql.jdbc.Driver").newInstance();   
		        } catch (Exception e) {
		        	e.printStackTrace();
		            }
		        Connection connectionObj = null;
		        
		        try {
					connectionObj  = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Dineshnalla_31");
				} catch (SQLException e) {
					e.printStackTrace();
				}
	            
		        Statement statement = null;
		        
		        try {
					statement = connectionObj.createStatement();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		       
		        String sqlQuery = "INSERT into studentenrollment (ID, FirstName, MiddleName, LastName, FatherName, DateOfBirth, Address, MobileNo, EMail ) values ("+studentObj.getID()+", '" +studentObj.getFirstName()+"', '" +studentObj.getMiddleName()+"', '" +studentObj.getLastName()+"','" +studentObj.getFatherName()+"', '" +studentObj.getDateOfBirth()+"', '" +studentObj.getAddress()+"','" +studentObj.getMobileNo()+"', '" +studentObj.getEMail()+"')";
				
		  try{
			  statement.executeUpdate(sqlQuery);
		  }catch(SQLException e){
			  e.printStackTrace();
		  }
		       
	}
	public List<Student> fetchstudent() throws SQLException{
		
		 try {
		            Class.forName("com.mysql.jdbc.Driver").newInstance();   
		        } catch (Exception e) {
		        	e.printStackTrace();
		            }
		        Connection connectionObj = null;
		        
		        try {
					connectionObj  = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Dineshnalla_31");
				} catch (SQLException e) {
					e.printStackTrace();
				}
	            
		        Statement statement = null;
		        
		        try {
					statement = connectionObj.createStatement();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		       
		        String sqlQuery = "select * from studentenrollment";
		        
		        ResultSet rs = null;
		        try{
					 rs = statement.executeQuery(sqlQuery);
				  }catch(SQLException e){
					  e.printStackTrace();
				  }
		        List<Student> studentList = new ArrayList<Student>();
		       if (rs.next()){
				do{
					   Student studentObj = new Student();
					   studentObj.setID(rs.getInt(1));
					   studentObj.setFirstName(rs.getString(2));
					   studentObj.setMiddleName(rs.getString(3));
					   studentObj.setLastName(rs.getString(4));
					   studentObj.setFatherName(rs.getString(5));
					   studentObj.setDateOfBirth(rs.getString(6));
					   studentObj.setAddress(rs.getString(7));
					   studentObj.setMobileNo(rs.getString(8));
					   studentObj.setEMail(rs.getString(9));
					   studentList.add(studentObj);
				   }while(rs.next());
		       }
			return studentList;
			}
	
	public Student fetchstudent(int id) throws SQLException{
		
		 try {
		            Class.forName("com.mysql.jdbc.Driver").newInstance();   
		        } catch (Exception e) {
		        	e.printStackTrace();
		            }
		        Connection connectionObj = null;
		        try {
					connectionObj  = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Dineshnalla_31");
				} catch (SQLException e) {
					e.printStackTrace();
				}
	            
		        Statement statement = null;
		        
		        try {
					statement = connectionObj.createStatement();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		       
	
	
	String sqlQuery = "select * from studentenrollment where id ="+id;
        ResultSet rs = null;
        
      try{
			 rs = statement.executeQuery(sqlQuery);
		  }catch(SQLException e){
			  e.printStackTrace();

	  }
   
      Student studentObj = new Student();
  if (rs.next()){
		   
		   studentObj.setID(rs.getInt(1));
		   studentObj.setFirstName(rs.getString(2));
		   studentObj.setMiddleName(rs.getString(3));
		   studentObj.setLastName(rs.getString(4));
		   studentObj.setFatherName(rs.getString(5));
		   studentObj.setDateOfBirth(rs.getString(6));
		   studentObj.setAddress(rs.getString(7));
		   studentObj.setMobileNo(rs.getString(8));
		   studentObj.setEMail(rs.getString(9));
		   
	  }
  return studentObj;
	
}	
	public void editStudent(Student studentObj){
		
		 try {
		            Class.forName("com.mysql.jdbc.Driver").newInstance();   
		        } catch (Exception e) {
		        	e.printStackTrace();
		            }
		        Connection connectionObj = null;
		        
		        try {
					connectionObj  = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Dineshnalla_31");
				} catch (SQLException e) {
					e.printStackTrace();
				}
	            
		        Statement statement = null;
		        
		        try {
					statement = connectionObj.createStatement();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		       
		        String sqlQuery = "UPDATE studentenrollment SET firstName='"+studentObj.getFirstName()+"', middleName='"+studentObj.getMiddleName()+"', lastName='" +studentObj.getLastName()+"',fatherName='"+studentObj.getFatherName()+"', dateOfBirth='" +studentObj.getDateOfBirth()+"',address='"+studentObj.getAddress()+"', mobileNo='"+studentObj.getMobileNo()+"', eMail='"+studentObj.getEMail()+"'" + "where id='" +studentObj.getID()+"'";
				
		  try{
			  statement.executeUpdate(sqlQuery);
		  }catch(SQLException e){
			  e.printStackTrace();
		  }

	}
}
		         

