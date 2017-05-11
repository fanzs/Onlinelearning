package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.TeacherDao;
import com.onlinelearning.dao.impl.TeacherDaoImpl;
import com.onlinelearning.entity.Teacher;

public class Information extends MyAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public String update(){
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		Teacher t=(Teacher) request.getSession().getAttribute("user");
		
		TeacherDao tDao = new TeacherDaoImpl();
		boolean updateTeacher = tDao.updateTeacher(t, phone, email);
		if(updateTeacher){
			return "success";
		}else{
			return "failure";			
		}
	}
}
