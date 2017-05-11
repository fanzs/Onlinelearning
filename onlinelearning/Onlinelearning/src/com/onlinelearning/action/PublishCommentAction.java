package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;
import com.onlinelearning.entity.Comments;
import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

public class PublishCommentAction extends MyAction {

	private static final long serialVersionUID = -18977881328624538L;
	
	private String commentContext;
	
	public String execute(){
		
//System.out.println(commentContext);
		Student stu=(Student) request.getSession().getAttribute("user");
//System.out.println(stu);

		String username=stu.getName();
		
		Comments comment=new Comments();
		comment.setUsername(username);
		comment.setContent(commentContext);
		
		Video v=(Video) request.getSession().getAttribute("TheVideo");
		
		v.getComments().add(comment);
		
		VideoService.getInstance().updateVideo(v);
		
		Video vr = VideoService.getInstance().getVideo(v.getId());
		session.setAttribute("TheVideo", vr);

		return "success";
	}


	public String getCommentContext() {
		return commentContext;
	}


	public void setCommentContext(String commentContext) {
		this.commentContext = commentContext;
	}




}
