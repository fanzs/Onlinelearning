<%@ page language="java" import="java.util.*,com.onlinelearning.entity.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>

<style>
.f-nav li{
	list-style:none;
	display:block;
	float:left;
	font-size:18px;
	padding:0 30px;
}
.f-nav li>a:hover{
	border-bottom:4px solid #49af4f;
}
.f-nav li>a{
	padding:15px 0;
	text-decoration:none;
	color: #49af4f;
}
.f-active{
	border-bottom:4px solid #49af4f;
}
.courseInfo:hover{
	background:#f7f7f7;
}
</style>



<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<title>全部课程</title>
</head>
<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" language="javascript"></script>

<body style="background: #eee;">
<nav class="navbar navbar-inverse" role="navigation" style="margin:0;">
  <div class="container-fluid">
    <div class="col-md-1"></div>
    <div class="navbar-header"> <a class="navbar-brand" href="#">在线授艺平台</a> </div>
    <div class="col-md-2" style="padding-top:4px;">
      <form name="search" action="${pageContext.request.contextPath}/Search_Video.action" method="post" class="navbar-form navbar-left" role="search">
        <div class="input-group input-group-sm">
          <span><input name="keyword" type="text" class="form-control" placeholder="Search"></span>
        <%--   <a href="${pageContext.request.contextPath}/Search_Video.action" class="input-group-addon"> 
          	<span> <img src="${pageContext.request.contextPath}/image/search.png"/></span> 
          </a>  --%>
          <span><input value="搜索" type="submit" class="form-control" /></span>
        </div>
      </form>
    </div>
    <div class="col-md-2"></div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/Course_getall">课程</a></li>
        <li><a>个人中心</a></li>
        
      </ul>
    </div>
    <div class="col-md-1" style="float:right;"></div>
    <div style="float:right;">
      <ul class="nav navbar-nav">
        <li><a>${sessionScope.user.name}</a></li>
       <li><a href="${pageContext.request.contextPath}/login_loginout">注销</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="col-md-12" style="height:190px;background:url(${pageContext.request.contextPath}/image/head.png) no-repeat;padding:40px 150px;">
	<div style="col-md-8">
    	<div class="col-md-1">
    		<img src="${pageContext.request.contextPath}/image/book.png" class="img-circle" style="border:solid 5px #FFFFFF;height:100px;width:100px;"/>
        </div>
        <div class="col-md-6" style="padding-left:30px;">
        	<h3 style="color:#FFF;">${sessionScope.user.name}，你好</h3>
            <p style="color:#FFF;">知识的价值不在于占有，而在于使用。</p>
        </div>
    </div>
</div>
<div class="col-md-12" style="height:60px;background:#FFF;padding-left:185px;padding-top:18px;">
	<ul class="f-nav">
    	<li><a href="${pageContext.request.contextPath}/jsp/student/student_course.jsp" class="f-active">我的课程</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/student/student_info.jsp" >个人资料</a></li>
    </ul>
</div>
<div class="col-lg-2" style="height:100%;">
</div>
<div class="col-md-8" style="background:#FFF;min-height:600px;height:auto;margin-top:30px;">
	<div class="col-md-2" style="height:1;"></div>
    <div class="col-md-8 courseInfo">
    
    <%
		Video v=(Video)request.getSession().getAttribute("TheVideo");
	%>
		<div class="col-md-12"
			style="min-height: 150px; height: auto; margin-top: 30px; padding: 40px 20px;">
				<div class="col-md-3" >
					<video width="600" height="560" src="<%=v.getFilePath() %>" controls>
					</video>
				</div>
		</div>
		
		<div class="col-md-12" style="background:#FFF;min-height:300px;height:auto;padding:0 40px;">
	    	<h3>评论区</h3>
	    	<form action="${pageContext.request.contextPath }/Publish_Comment.action" style="border-bottom:2px solid #CCC;height:170px;">
	        	<div class="form-group">
	            	<textarea name="commentContext" class="form-control" rows="3" cols="120" style="resize:none;padding:10px;" placeholder="写点什么评论一下呗！"></textarea>
	            </div>  
	            <input type="hidden" name="videoid" value=<%=v.getId() %>>
	            <div class="form-group">     	
	            	<button class="btn btn-primary" type="submit" style="float:right;">发表评论</button>
	            </div>
	        </form>
	    </div>
	    
	    <div class="col-md-12" style="background:#FFF;min-height:300px;height:auto;padding:0 40px;">
	    	<h3>评论列表</h3>
	   	<% 
	    	for(Comments comment:v.getComments()){
	    		
	    %>
		    <div class="form-group">
	        	<label class="col-md-3 control-label">用户 ：<%=comment.getUsername() %></label>
	        	<div class="col-md-8">
	        		<label class="col-md-3 control-label">评论：<%=comment.getContent() %></label>
	            </div>
	        </div>
	    <%	    
	    	}
	    %>
	    </div>
    </div>
</div>
<div class="col-md-12" style="height:100px; text-align:center;background:#464c51;margin-top:50px;">
	<h1>页脚</h1>
</div>
</body>
</html>
