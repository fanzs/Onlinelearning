<%@ page language="java"
	import="java.util.*,com.onlinelearning.entity.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<style>
#nav {
	margin: 0;
	padding: 15px 20px;
	border-bottom: 10px solid #5DAFBA;
	background: #FFF;
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

#inline-nav {
	height: 45px;
	border-bottom: 1px solid #e5e5e5;
}

#inline-nav ul>li {
	display: block;
	font-size: 18px;
	list-style: none;
	float: left;
}

#inline-nav ul>li>a {
	height: 40px;
	color: #333;
	text-decoration: none;
	padding: 0 20px;
	padding-bottom: 20px;
	font-family: "微软雅黑";
}

#inline-nav ul>li>a:hover {
	color: #ff4c29;
}

.little-nav {
	display: block;
	padding: 0 10px;
	float: left;
	border-right: 1px solid #e6e6e6;
	font-size: 18px;
}

.courseInfo {
	height: 300px;
	padding: 20px 15px;
	float: left;
}

.courseInfo:hover {
	background-color: #f7f7f7;
}

.context {
	font-size: 13px;
	color: #666;
	position: relative;
	text-align: left;
	line-height: 22px;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<title>全部课程</title>
</head>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/bootstrap.min.js" language="javascript"></script>

<body style="min-height: 630px; height: auto; background: #f9f9f9;">
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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">生活DIV
							<ul class="dropdown-menu">
								<li><a href="#">生活DIV</a></li>
								<li><a href="#">旧物改造</a></li>
								<li><a href="#">废物利用手工</a></li>
								<li class="divider"></li>
								<li><a href="#">DIV手工</a></li>
								<li><a href="#">礼物手工</a></li>
								<li><a href="#">儿童手工</a></li>
							</ul>
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
						if ("true".equals(request.getSession().getAttribute("login"))) {
					%>
					<li><a
						href="jsp/${sessionScope.identity}/${sessionScope.identity}_info.jsp">${user.name }</a></li>
					<li><a href="login_loginout">注销</a></li>
					<%
						} else {
					%>
					<li><a href="login.jsp">登录</a></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown">注册
							<ul class="dropdown-menu">
								<li><a href="studentRegister.jsp">学生注册</a></li>
								<li><a href="teacherregister.jsp">老师注册</a></li>
							</ul>
					</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>

	<div class="col-md-12" style="padding: 20px 150px; height: auto;">

		<!-- 传统手工 -->
		<%
			String key = session.getAttribute("keyword").toString();
			System.out.print(key);
			if ("传统手工".equals(key)) {
		%>
		<h3>
			<span style="font-size: 12px; font-weight: bold;"><img
				src="image/location.png" />&nbsp&nbsp&nbsp传统手工</span>
		</h3>
		<div class="col-md-12"
			style="background: #FFF; height: 300px; padding-top: 25px;">
			<div class="col-md-12" id="inline-nav">
				<ul>
					<li style="border-right: 3px solid #e5e5e5;"><a>传统手工</a></li>
					<li><a>简笔画</a></li>
					<li><a>十字绣</a></li>
					<li><a>编织</a></li>
					<li><a>手绘</a></li>
					<li><a>树叶贴画</a></li>
				</ul>
			</div>
			<div class="col-md-12" style="padding: 15px 10px;">
				<div
					style="height: 200px; width: 260px; display: block; float: left;">
					<img src="image/chuantong.jpg" style="height: 200px; width: 260px;" />
				</div>
				<div class="col-md-9" style="margin-left: 20px;">
					<h2 style="margin-top: 0;">传统手工</h2>
					<p style="color: #999;">手工艺是我国传统文化的一个重要组成部分。手工艺是指以手工劳动进行制作的具有独特艺术风格的工艺美术。有别于以大工业机械化方式批量生产规格化日用工艺品的工艺美术。
						手工艺品指的是纯手工或借助工具制作的产品。可以使用机械工具，但前提是工艺师直接的手工作业仍然为成品的最主要来源。</p>
				</div>
			</div>
		</div>

		<%
			} else if ("民间工艺".equals(key)) {
		%>
		<!--民间工艺-->
		<h3>
			<span><img src="image/location.png" /></span>
		</h3>
		<div class="col-md-12"
			style="background: #FFF; height: 300px; padding-top: 25px;">
			<div class="col-md-12" id="inline-nav">
				<ul>
					<li style="border-right: 3px solid #e5e5e5;"><a>民间工艺</a></li>
					<li><a>剪纸</a></li>
					<li><a>刺绣</a></li>
					<li><a>中国结</a></li>
					<li><a>民族工艺</a></li>
					<li><a>皮影木偶</a></li>
				</ul>
			</div>
			<div class="col-md-12" style="padding: 15px 10px;">
				<div
					style="height: 200px; width: 260px; display: block; float: left;">
					<img src="image/minzu.jpg" style="height: 200px; width: 260px;" />
				</div>
				<div class="col-md-9" style="margin-left: 20px;">
					<h2 style="margin-top: 0;">民间工艺</h2>
					<p style="color: #999;">民间工艺是指对物体的加工过程，同进囊括了对艺术品的加工技艺。是当今社会经济和文化的双重载，称之为中华文化的瑰宝当之无愧；一起来和图钉学习民间工艺的手工制作吧！</p>
				</div>
			</div>
		</div>
		<%
			} else if ("雕塑陶艺".equals(key)) {
		%>
		<!-- 雕塑陶艺 -->
		<h3>
			<span><img src="image/location.png" /></span>
		</h3>
		<div class="col-md-12"
			style="background: #FFF; height: 300px; padding-top: 25px;">
			<div class="col-md-12" id="inline-nav">
				<ul>
					<li style="border-right: 3px solid #e5e5e5;"><a>雕塑陶艺</a></li>
					<li><a>软陶</a></li>
					<li><a>橡皮泥</a></li>
					<li><a>泥人泥塑</a></li>
					<li><a>雕刻</a></li>
					<li><a>超轻粘土</a></li>
				</ul>
			</div>
			<div class="col-md-12" style="padding: 15px 10px;">
				<div
					style="height: 200px; width: 260px; display: block; float: left;">
					<img src="image/taoci.jpg" style="height: 200px; width: 260px;" />
				</div>
				<div class="col-md-9" style="margin-left: 20px;">
					<h2 style="margin-top: 0;">雕塑陶艺</h2>
					<p style="color: #999;">雕塑陶艺历史悠久，约始自秦、汉，盛于明、清时期的德化窑、石湾窑和景德镇窑等。一般系指具有独立性的立体陶瓷雕塑制品，需经模印、镶嵌、手工雕镂、捏、堆塑、雕刻等成型过程并经高温烧成。按制作方法可分圆雕、浮雕、镂雕、捏雕等数种。按制品可分素雕和彩雕两种，包括陈列美术品、日用生活器皿及玩具等。</p>
				</div>
			</div>
		</div>
		<%
			}
		%>
		<!-- 视频列表 -->
		<div class="col-md-12"
			style="background: #FFF; padding: 0; min-height: 50px; margin-top: 30px; border: 1px solid #e5e5e5; padding-top: 5px; padding-left: 20px;">
			<h4 style="color: red;">视频列表</h4>
		</div>
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
	<footer class="col-md-12"
		style="height: 100px; display: block; text-align: center; background: #464c51; position: static; bottom: 0; margin-top: 30px;">
		<h1>页脚</h1>
	</footer>
</body>
</html>
