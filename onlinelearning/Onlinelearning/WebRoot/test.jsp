<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    

  </head>
  
  <body>
  <video width="360" height="160" src="videos/7/first.mp4" controls>
						</video>
  
     <video src="videos\7\first.mp4" controls>
    </video>
    
     <video src="videos/first.mp4" controls>
    </video>
     <video src="first.mp4" controls>
    </video>
  </body>
</html>
