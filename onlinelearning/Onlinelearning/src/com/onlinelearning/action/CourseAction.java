package com.onlinelearning.action;

import java.util.ArrayList;
import java.util.List;
import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

public class CourseAction extends MyAction {

	private static final long serialVersionUID = 7270754112895030265L;
	
	private List<Video> list=new ArrayList<Video>();
	
	
	
	public List<Video> getList() {
		return list;
	}

	public void setList(List<Video> list) {
		this.list = list;
	}

	public String getall() throws Exception {
		list = VideoService.getInstance().getVideosResult(null);
		return "success";
	}
	
	public String getit() throws Exception {
		list = VideoService.getInstance().getVideosResult("IT");
		return "success";
	}
	public String getenglish() throws Exception {
		list = VideoService.getInstance().getVideosResult("英语");
		return "success";
	}
	public String getmath() throws Exception {
		list = VideoService.getInstance().getVideosResult("数学");
		return "success";
	}
	public String getlevel() throws Exception {
		list = VideoService.getInstance().getVideosResult("等级考试");
		return "success";
	}
}
