package com.onlinelearning.dao;

import com.onlinelearning.entity.Student;
import com.onlinelearning.util.HibernateUtil;

public abstract class StudentDao extends HibernateUtil{
	
	public boolean addStudent(Student s) {
		return false;
	}
	
	public boolean deleteStudent(Student s) {
		return false;
	}
	
	public boolean updateStudent(Student s) {
		return false;
	}
	
	public Student getStudent(Student s) {
		return null;
	}

	public Student getStudent(String name, String password) {
		return null;
	}

	public boolean getStudent(String name) {
		return false;
	}
}
