package com.onlinelearning.action.common;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class MyAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ServletContextAware{
	protected HttpSession session;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected ServletContext context;
	
	public void setServletRequest(HttpServletRequest req) {
		this.request=req;
		this.session=req.getSession();
	}

	public void setServletResponse(HttpServletResponse resp) {
		this.response=resp;
		
	}

	public void setServletContext(ServletContext context) {
		this.context=context;
	}
	
}
