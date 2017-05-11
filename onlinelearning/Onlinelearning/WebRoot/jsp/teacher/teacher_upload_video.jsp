<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<style>
	#nav {
	margin: 0;
	padding: 5px 20px;
	background:#FFF;
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
.f-nav li {
	list-style: none;
	display: block;
	float: left;
	font-size: 18px;
	padding: 0 30px;
}

.f-nav li>a:hover {
	border-bottom: 4px solid #49af4f;
}

.f-nav li>a {
	padding: 15px 0;
	text-decoration: none;
	color: #49af4f;
}

.f-active {
	border-bottom: 4px solid #49af4f;
}
</style>



	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
			rel="stylesheet" />
		<title>全部课程</title>
	<script src="../../js/jquery-3.0.0.min.js"></script>
	<script src="../../js/bootstrap.min.js"
		language="javascript"></script>
	</head>

	<body style="background: #eee;">
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
								src="../../image/search.png" /></span>
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
					<li><a>${user.name }</a></li>
				</ul>
			</div>
		</div>
	</nav>

		<div class="col-md-12"
			style="height:190px;background:url(${pageContext.request.contextPath}/image/head.png) no-repeat;padding:40px 150px;">
			<div style="">
				<div class="col-md-1">
					<img src="${pageContext.request.contextPath}/image/book.png"
						class="img-circle"
						style="border: solid 5px #FFFFFF; height: 100px; width: 100px;" />
				</div>
				<div class="col-md-6" style="padding-left: 30px;">
					<h3 style="color: #FFF;">
						${sessionScope.user.name}，你好
					</h3>
					<p style="color: #FFF;">
						知识的价值不在于占有，而在于分享。
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-12"
			style="height: 60px; background: #FFF; padding-left: 185px; padding-top: 18px;">
			<ul class="f-nav">
				<li>
					<a
						href="${pageContext.request.contextPath}/jsp/teacher/teacher_info.jsp">个人资料</a>
				</li>
				<li>
					<a
						href="${pageContext.request.contextPath}/jsp/teacher/teacher_video.jsp">我的课程</a>
				</li>
				<li>
					<a class="f-active">上传课程</a>
				</li>
			</ul>
		</div>
		<div class="col-lg-2" style="height: 100%;">
		</div>
		<div class="col-md-8"
			style="background: #FFF; height: 400px; margin-top: 30px; padding: 40px 20px;">
			<form name="upload"	action="${pageContext.request.contextPath }/SmartUploadServlet.do" 
			method="post" enctype="multipart/form-data"
				class="form-horizontal col-md-8">
			
				<div class="form-group">
					<label class="col-md-3 control-label">
						价格
					</label>
					<div class="col-md-8">
						<input type="text" name="price" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">
						课程类别（英语/数学/计算机/等级考试）
					</label>
					<div class="col-md-8">
						<input type="text" name="category" class="form-control" />
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="col-md-3 control-label">
						课程描述
					</label>
					<div class="col-md-8">
						<input type="text" name="descr" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">
						${FileUploadResult }
					</label>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label">
						课程上传（仅支持mp4）
					</label>
					<div class="col-md-8">
						<input type="file" name="videofile" class="form-control" />
					</div>
				</div>


				<div class="form-group">
					<div class="col-md-3"></div>&nbsp;&nbsp;&nbsp;
					<button class="btn btn-success btn-lg" type="submit">
						上传
					</button>
				</div>
			</form>
		</div>
	</body>
</html>
