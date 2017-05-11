package com.onlinelearning.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	public void destroy() {

	}
	
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest request = (HttpServletRequest)servletRequest;
		HttpServletResponse response = (HttpServletResponse)servletResponse;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String currentURL = request.getRequestURI();//取得根目录所对应的绝对路径:
		String ctxPath = request.getContextPath();
		 
		  String targetURL = currentURL.substring(ctxPath.length());  
		  HttpSession session = request.getSession(false);
		 
 System.out.println(session.getAttribute("user")+"***************************************************");
		  if (!"/index.jsp".equals(targetURL)) {
			  if (session == null || session.getAttribute("user") == null) {
				  response.sendRedirect(ctxPath + "/index.jsp");
				  return;
			  }
			  else{
				 filterChain.doFilter(request, response); 
			  }
		  }
		  //加入filter链继续向下执行
		 // filterChain.doFilter(request, response);

		}

		public void init(FilterConfig filterConfig) throws ServletException {

		}

}