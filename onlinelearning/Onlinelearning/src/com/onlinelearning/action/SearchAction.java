package com.onlinelearning.action;

import java.util.List;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.VideoDao;
import com.onlinelearning.dao.impl.VideoDaoImpl;
import com.onlinelearning.entity.Video;

@SuppressWarnings("serial")
public class SearchAction extends MyAction {
	private String keyword=new String();
	
	public String execute(){
		VideoDao vDao = new VideoDaoImpl();
//System.out.println(keyword+"********************************************");
		List<Video> list=vDao.find(keyword);
//System.out.println(list.size()+"---------------------------------------");
		session.setAttribute("search_result_video", list);
		session.setAttribute("keyword", keyword);
		return "success";
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
