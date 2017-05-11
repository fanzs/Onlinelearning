<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.onlinelearning.entity.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#nav {
	margin: 0;
	padding: 15px 20px;
}

#nav li>a {
	color: #333;
	font-size: 16px;
	font-family: "微软雅黑";
	background: none;
}

#nav li>a:hover {
	background: none;
	color: #ff4c29;
}

.dropdown a:hover {
	background: none;
}
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />
<title>在线授艺平台</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	language="javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.carousel').carousel('cycle');
	});
</script>
</head>
<body>
	<div id="banner">
		<nav class="navbar" role="navigation" id="nav">
		<div class="container-fluid">
			<div class="col-md-1"></div>
			<div class="navbar-header">
				<a class="navbar-brand" href="#">在线授艺平台</a>
			</div>
			<div class="col-md-2" style="padding-top: 4px;">
				<form class="navbar-form navbar-left" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<a href="#" class="input-group-addon"> <span> <img
								src="image/search.png" /></span>
						</a>
					</div>
				</form>
			</div>
			<div class="col-md-1"></div>
			<div>

				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="${pageContext.request.contextPath}/Search_Video" class="dropdown-toggle"
						data-toggle="dropdown">生活DIV
							<!-- <ul class="dropdown-menu">
								<li><a href="#">生活DIV</a></li>
								<li><a href="#">旧物改造</a></li>
								<li><a href="#">废物利用手工</a></li>
								<li class="divider"></li>
								<li><a href="#">DIV手工</a></li>
								<li><a href="#">礼物手工</a></li>
								<li><a href="#">儿童手工</a></li>
							</ul> -->
					</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">传统手工
							<ul class="dropdown-menu">
								<li><a href="Search_Video.action?keyword=传统手工">传统手工</a></li>
								<li><a href="#">简笔画</a></li>
								<li><a href="#">十字绣</a></li>
								<li class="divider"></li>
								<li><a href="#">编织</a></li>
								<li><a href="#">手绘</a></li>
								<li><a href="#">树叶贴画</a></li>
							</ul>
					</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">民间工艺
							<ul class="dropdown-menu">
								<li><a href="Search_Video.action?keyword=民间工艺">民间工艺</a></li>
								<li><a href="#">剪纸</a></li>
								<li><a href="#">刺绣</a></li>
								<li><a href="#">中国结</a></li>
								<li class="divider"></li>
								<li><a href="#">民族工艺</a></li>
								<li><a href="#">皮影木偶</a></li>
							</ul>
					</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">雕塑陶艺
							<ul class="dropdown-menu">
								<li><a href="Search_Video.action?keyword=雕塑陶艺">雕塑陶艺</a></li>
								<li><a href="#">软陶</a></li>
								<li><a href="#">橡皮泥</a></li>
								<li class="divider"></li>
								<li><a href="#">泥人泥塑</a></li>
								<li><a href="#">雕刻</a></li>
								<li><a href="#">超轻粘土</a></li>
							</ul>
					</a></li>
				</ul>

			</div>
			<div class="col-md-1" style="float: right;"></div>
			<div style="float: right;">
				<ul class="nav navbar-nav">
					<%
					if("true".equals(request.getSession().getAttribute("login"))){
					%>
					<li><a href="jsp/${sessionScope.identity}/${sessionScope.identity}_info.jsp">${user.name }</a></li>
					<li><a href="login_loginout">注销</a></li>
					<%
						}
						else{
					%>
					<li><a href="login.jsp">登录</a></li>
					<li class="dropdown">
						<a href="" class="dropdown-toggle"
						data-toggle="dropdown">注册
							<ul class="dropdown-menu">
								<li><a href="studentRegister.jsp">学生注册</a></li>
								<li><a href="teacherregister.jsp">老师注册</a></li>
							</ul>
						</a>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<div class="col-md-12"
		style="height: 612px; padding: 0; overflow: hidden;">
		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators" style="margin-bottom: 40px;">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="image/banner.jpg" style="height: 640px !important;">
				</div>
				<div class="item">
					<img src="image/ban1.jpg" style="height: 640px !important;">
				</div>
				<div class="item">
					<img src="image/ban2.jpg" style="height: 640px !important;">
				</div>
				<div class="item">
					<img src="image/ban3.jpg" style="height: 640px !important;">
				</div>
				<div class="item">
					<img src="image/banner4.jpg" style="height: 640px !important;">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
			</a> <a class="carousel-control right" href="#myCarousel"
				data-slide="next"> </a>
		</div>
	</div>
	<div class="col-md-12" style="height: 500px; padding: 30px 150px;">
		<h2>生活DIV</h2>
		<div class="col-md-12" style="min-height: 300px; height: auto;">
			<%
				List<Video> list = (List) session.getAttribute("search_result_video");
				if (list != null)
					for (Video v : list) {
			%>
			<a href="getVideoInfo.action?v_id=<%=v.getId()%>">
			<div class="col-md-3 courseInfo">
				<div class="col-md-12"
					style="background-color: #6FF; height: 160px;"></div>
				<div class="col-md-12">
					<div class="col-md-12" style="height: 60px;font-size: 18px;">
						<%=v.getName()%>
					</div>
					<div class="col-md-12" style="height: 20px; color: #999;margin-top:5px;">
						讲师&nbsp;&nbsp;&nbsp;<%=v.getTeacher().getName()%>
					</div>
					<div class="col-md-12 context" style="margin: 5px 0;">
						介绍&nbsp;&nbsp;&nbsp;<%=v.getIntroduction()%>
					</div>
				</div>
			</div>
			</a>
			<%
				}
			%>
		</div>
	</div>
	<div class="col-md-12"
		style="height: 100px; text-align: center; background: #202020;">
		<h1>页脚</h1>
	</div>
</body>
</html>