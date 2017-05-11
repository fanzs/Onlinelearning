package com.onlinelearning.action;

import java.util.ArrayList;
import java.util.List;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.dao.VideoDao;
import com.onlinelearning.dao.impl.VideoDaoImpl;
import com.onlinelearning.entity.Video;

public class ToMainJsp extends MyAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String toMain(){
		
		VideoDao vDao = new VideoDaoImpl();
		List<Video> list = vDao.find("生活DIV");
		List<Video> showlist = new ArrayList<Video>();
		if(list !=null && list.size()>=4){
			for(int i=0;i<4;i++){
				showlist.add(list.get(i));
			}
			session.setAttribute("search_result_video", showlist);
		}
		
		return "success";
	}
}
