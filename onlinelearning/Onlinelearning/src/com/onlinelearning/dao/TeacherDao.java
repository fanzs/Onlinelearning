package com.onlinelearning.dao;

import java.util.List;

import com.onlinelearning.entity.Teacher;
import com.onlinelearning.util.HibernateUtil;

public class TeacherDao extends HibernateUtil{
	
	public  boolean addTeacher(Teacher t) {
		return false;
	}
	
	public boolean deleteTeacher(Teacher t) {
		return false;
	}
	
	
	public Teacher getTeacher(Teacher t) {
		return null;
	}

	public Teacher getTeacher(String name, String password) {
		return null;
	}

	public boolean updateTeacher(Teacher t, String phone, String email) {
		
		return true;
	}

	public boolean getTeacher(String username) {
		return false;
	}

	public boolean updateTeacher(Teacher t) {
		return true;
	}

	public List<Teacher> getAllTeachers() {
		return null;
	}
}
