package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

public class PlayVideo extends MyAction{
	
	private static final long serialVersionUID = 1L;
	
	public String execute(){
		String strVideoId=request.getParameter("video_id");
		if(strVideoId!=null){
			int video_id=Integer.parseInt(strVideoId);
			Video v = VideoService.getInstance().getVideo(video_id);
			session.setAttribute("TheVideo", v);
			return "success";
		}
		
		return "failure";
	}
}
