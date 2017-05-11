package com.onlinelearning.action;

import java.util.List;
import org.apache.struts2.interceptor.validation.SkipValidation;
import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.StudentDao;
import com.onlinelearning.dao.TeacherDao;
import com.onlinelearning.dao.impl.StudentDaoImpl;
import com.onlinelearning.dao.impl.TeacherDaoImpl;
import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

public class LoginAction extends MyAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = -834656071392767941L;
	private String name;
	private String password;
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String studentlogin(){
		
		StudentDao sDao = new StudentDaoImpl();
		Student student = sDao.getStudent(name, password);
		if(student != null){
			request.getSession().setAttribute("login", "true");
			request.getSession().setAttribute("user_level", 1);
			request.getSession().setAttribute("user", student);
			session.setAttribute("identity", "student");
			//获取用户的视频信息，存到session里
			List<Video> studentVideoList = VideoService.getInstance().getVideos(student);
			request.getSession().setAttribute("student_video_list", studentVideoList);
			
			List<Video> videolist=VideoService.getInstance().getVideos(student); 
			request.getSession().setAttribute("myVideoList", videolist);
			return "success";
		}
		return "error";
	}
	
	public String teacherlogin(){
			TeacherDao teacherDao = new TeacherDaoImpl();
			Teacher teacher = teacherDao.getTeacher(name, password);
			if (teacher != null) {

				request.getSession().setAttribute("login", "true");
				request.getSession().setAttribute("user_level", 2);
				request.getSession().setAttribute("user", teacher);
				session.setAttribute("identity", "teacher");
				// 获取用户的视频信息，存到session里
				List<Video> videolist = VideoService.getInstance().getVideos(teacher);
				request.getSession().setAttribute("myVideoList", videolist);

				// System.out.println(videolist);
				return "success";
			}		
		return "error";
	}
	//注解，是使struts2的表单验证失效
	@SkipValidation
	public String loginout(){
		session.removeAttribute("login");
		session.removeAttribute("user_level");
		session.removeAttribute("user");
		session.removeAttribute("myVideoList");
		return SUCCESS;
	}




	@Override
	public void validate() {
		//
		if("".equals(name.trim())){
			this.addFieldError("usernameError","用户名不能为空");
			
		}
		
		if(password.length()<3){
			 this.addFieldError("passwordError", "密码长度不少于3位");
		}
		super.validate();
	}

}
