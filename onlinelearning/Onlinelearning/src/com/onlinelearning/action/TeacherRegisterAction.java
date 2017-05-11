package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.TeacherDao;
import com.onlinelearning.dao.impl.TeacherDaoImpl;
import com.onlinelearning.entity.Teacher;
import com.opensymphony.xwork2.ModelDriven;


public class TeacherRegisterAction extends MyAction implements ModelDriven<Teacher> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Teacher teacher=new Teacher();
	
	public Teacher getModel() {
		return teacher;
	}
	
	public String register(){
		TeacherDao tDao = new TeacherDaoImpl();
		if(tDao.addTeacher(teacher)){
			request.getSession().setAttribute("login", "true");
			request.getSession().setAttribute("user_level", 1);
			request.getSession().setAttribute("user", teacher);
System.out.println("注册成功！");		
			return SUCCESS;			
		}
		return "error";
	}
}
