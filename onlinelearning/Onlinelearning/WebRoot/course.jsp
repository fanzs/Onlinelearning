<%@ page language="java" import="java.util.*,com.onlinelearning.entity.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

<body style="min-height:630px;height:auto;background: #f9f9f9;">
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
	
	<div class="col-md-12" style="margin-top:20px;padding:0;min-height:400px;height:auto;">
    <!--迭代器 -->
    <s:iterator value="list">
    	<div class="col-md-12 courseInfo">
        	<div class="col-md-3" style="background-color:#6FF;height:160px;">
            </div>
            <div class="col-md-9">
            	<div class="col-md-12" style="height:30px;font-size:18px;">课程名<s:property value="name"/></div>
                <div class="col-md-12" style="height:20px;color:#999;">讲师&nbsp;&nbsp;&nbsp;<s:property value="teacher.name"/></div>
                <div class="col-md-12 context" style="margin:20px 0;">介绍&nbsp;&nbsp;&nbsp;<s:property value="introduction"/></div>
                <div class="col-md-4">
                	<span><img src="image/user.png" /></span>人数 66
                	<%-- <a href="${pageContext.request.contextPath}/jsp/student/pay.jsp?id=<s:property value="id"/>"> --%>
                	<a href="${pageContext.request.contextPath}/Buy_course?id=<s:property value="id"/>">
                	<span >购买此课程</span>
                	</a>
                	
                </div>
            </div>
        </div>
   	</s:iterator>
    </div>
	
	<%--
	<%
		Video video = (Video)session.getAttribute("video");
		String price = ""+video.getPrice();
	%>
	 <div class="col-md-12" style="padding: 20px 150px;">
		<h3>
			<span><img src="image/location.png" />课程信息</span>
		</h3>
		<div class="col-md-12"
			style="background: #FFF; min-height: 500px;height:auto; padding: 25px 50px;">
			<div style="height:260px;width:400px;background:#F00;float:left;"></div>
			<div class="col-md-6" style="margin-left:20px;">
				<h3><%=video.getCategory()%>  ——  <%=video.getName() %></h3>
				<p><%=video.getIntroduction() %></p>
				<p><%=video.getPrice() %></p>
				<p><%=video.getTeacher().getName() %></p>
				
			<%
				if("免费".equals(price)){
			%>
				<button>马上学习</button>
			<%
				}
				else{
			%>
				<button >付费观看</button>
			<%
				}
			%>
			</div>
		</div>
   </div> --%>
<footer class="col-md-12" style="height:100px;display:block; text-align:center;background:#464c51;position:static; bottom:0;margin-top:30px;">
	<h1>页脚</h1>
</footer>
</body>
</html>
