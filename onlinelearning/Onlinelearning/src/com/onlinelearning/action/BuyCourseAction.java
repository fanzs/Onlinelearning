package com.onlinelearning.action;

import java.util.List;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.StudentDao;
import com.onlinelearning.dao.impl.StudentDaoImpl;
import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

@SuppressWarnings("serial")
public class BuyCourseAction extends MyAction{
	@Override
	public String execute() throws Exception {
		String login = (String) session.getAttribute("login");
		if(!"true".equals(login)){
			return "nologin";
		}
		String strId = request.getParameter("id");
		int id=Integer.parseInt(strId);
		Video v=VideoService.getInstance().getVideo(id);
System.out.println("11111111111111111111111111111111111111111111111111111");
		Student s=(Student) session.getAttribute("user");
		s.getVideos().add(v);
		StudentDao sDao = new StudentDaoImpl();
		sDao.updateStudent(s);
		//StudentService.getInstance().addStudent(s);
System.out.println("22222222222222222222222222222222222222222222222222222222222");		
		List<Video> studentVideoList = VideoService.getInstance().getVideos(s);
//System.out.println(studentVideoList.size()+"*************************************************");
		request.getSession().setAttribute("student_video_list", studentVideoList);
System.out.println("3333333333333333333333333333333333333333333333333333333333");
		return "success";
	}
}
