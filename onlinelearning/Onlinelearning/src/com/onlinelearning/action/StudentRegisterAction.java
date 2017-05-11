package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.StudentDao;
import com.onlinelearning.dao.impl.StudentDaoImpl;
import com.onlinelearning.entity.Student;
import com.opensymphony.xwork2.ModelDriven;

public class StudentRegisterAction extends MyAction implements ModelDriven<Student>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//模态注入
	private Student student=new Student();

	
	public Student getModel() {
		return student;
	}
	
	public String register(){
		StudentDao sDao = new StudentDaoImpl();
		if(sDao.addStudent(student)){
			return "success";
		}
		else{
			return "error";
		}
	}

}
