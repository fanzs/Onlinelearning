package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.VideoDao;
import com.onlinelearning.dao.impl.VideoDaoImpl;
import com.onlinelearning.entity.Video;

public class CourseInfo extends MyAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int v_id;
	private Video video = new Video();
	public String VideoInfo(){
		VideoDao vDao = new VideoDaoImpl();
		video = vDao.getVideoInfo(v_id);
		if(video != null){
			session.setAttribute("video", video);
		}
		else
			System.out.println(video);
		return "success";
	}
	public int getV_id() {
		return v_id;
	}

	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	
}
