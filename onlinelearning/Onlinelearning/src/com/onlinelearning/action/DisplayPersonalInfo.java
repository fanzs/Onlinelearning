package com.onlinelearning.action;

import com.onlinelearning.action.common.MyAction;

public class DisplayPersonalInfo extends MyAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		Object strLevel=this.session.getAttribute("user_level");
		if(strLevel==null){
			return "failure";
		}
		int level=Integer.parseInt(strLevel.toString());
		if(1==level){
			return "student";
		}else if(2==level){
			return "teacher";
		}
		
		return "failure";
	}
}
