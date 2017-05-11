<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<style>
#nav {
	margin: 0;
	padding: 15px 20px;
	border-bottom: 10px solid #5DAFBA;
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

.ft {
	font-size: 16px;
	color: #8C8E8E;
	font-family: "微软雅黑";
}
</style>
<html>
<head>

<title>欢迎注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
function judge(){
		var action = document.loginForm.action;
		if(action == null || action == "")
			alert("请选择登陆方式");
}

function student(){
	document.loginForm.action = "login_studentlogin";
}

function teacher(){
	document.loginForm.action = "login_teacherlogin";
}
</script>
</head>

<body>
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
				<li><a href="index.html">首页</a></li>
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
							<li><a href="#">传统手工</a></li>
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
							<li><a href="#">民间工艺</a></li>
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
							<li><a href="#">雕塑陶艺</a></li>
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
				<li>
					<a href="" class="dropdown-toggle"
					data-toggle="dropdown">注册
						<ul class="dropdown-menu">
							<li><a href="studentRegister.jsp">学生注册</a></li>
							<li><a href="teacherRegister.jsp">老师注册</a></li>
						</ul>
					</a>
				</li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="col-md-12" style="padding: 50px 500px;">
		<div class="col-md-10">
			<h3 style="margin-bottom: 30px; font-weight: bold;">立即登录平台</h3>
			<form class="form-horizontal" method="post" name="loginForm" onsubmit="return judge();">
				<div class="form-group">
					<div class="col-md-5"></div>
					<div class="btn-group">
						<button type="button" class="btn btn-primary" onclick="student();">我是学员</button>
						<button type="button" class="btn btn-primary" onclick="teacher();">我是技师</button>
					</div>
				</div>
				<div class="form-group"></div>
				<div class="form-group">
					<label class="control-label col-md-3 ft">用户名</label>
					<div class="col-md-9">
						<input class="form-control" type="text" name="name" placeholder="请输入您的用户名" />
					</div>
				</div>
				<div class="form-group"></div>
				<div class="form-group">
					<label class="control-label col-md-3 ft">密码</label>
					<div class="col-md-9">
						<input class="form-control" type="password" name="password" placeholder="请输入您账号的密码" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-9"></div>
					<button class="btn btn-link">忘记密码？</button>
				</div>
				<div class="form-group">
					<div class="col-md-3"></div>
					<div class="col-md-9">
						<button class="btn btn-block btn-primary"
							style="background: #5DAFBA; border: none;">登录</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
