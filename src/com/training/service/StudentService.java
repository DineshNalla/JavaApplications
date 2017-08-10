package com.training.service;
import java.sql.SQLException;
import java.util.List;

import com.training.dao.StudentDAO;
import com.training.model.Student;;

public class StudentService {
	
	public void addStudent(Student studentObj){
		
		StudentDAO daoObj = new StudentDAO();
		daoObj.addStudent(studentObj);
	}
	
	public List<Student> fetchstudent(){
		
		StudentDAO daoObj = new StudentDAO();
		List<Student> studentList = null;
		try{
			studentList = daoObj.fetchstudent();
		}	catch(SQLException e){
			 	e.printStackTrace();
			}
	
		return studentList;
		
	}
public Student fetchStudent(int id) throws SQLException{
		
		StudentDAO daoObj = new StudentDAO();
		Student studentObj = daoObj.fetchstudent(id);
		
	
		return studentObj;
		}

public void editStudent(Student studentObj){
	
	StudentDAO daoObj = new StudentDAO();
	daoObj.editStudent(studentObj);
}
}
