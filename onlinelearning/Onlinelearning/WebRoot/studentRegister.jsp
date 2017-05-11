<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<style>
#nav{
	margin:0;
	padding:15px 20px;
	border-bottom:10px solid #5DAFBA;
}
#nav li>a{
	color: #333;
	font-size: 16px;
	font-family: "微软雅黑";
	background:none;
}
#nav li>a:hover{
	background:none;
	color:#ff4c29;
}
.dropdown a:hover{
	background:none;
}
.ft{
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
		var name = document.registerFrom.name.value;
		var p1 = document.getElementById("p1").value;
		var p2 = document.registerFrom.password.value;
		var regex = /^[^_][A-Za-z]*[a-z0-9_]*$/ ;
		
		if(name == "" || name == null){
			alert("请输入用户名");
			return false;
		}
		if(name.length<6 || name.length>16){
			alert("用户名格式不正确");
		}
		
		if(p1 == "" || p1 == null){
			alert("密码不能为空");
			return false;
		}
		
		if(p1 != p2){
			alert("两次输入的密码不同");
			return false;
		}
	}
</script>
</head>

<body >
	<nav class="navbar" role="navigation" id="nav">
  <div class="container-fluid">
    <div class="col-md-1"></div>
    <div class="navbar-header"> <a class="navbar-brand" href="#">在线授艺平台</a> </div>
    <div class="col-md-2" style="padding-top:4px;">
      <form class="navbar-form navbar-left" role="search">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search">
          <a href="#" class="input-group-addon"> <span> <img src="image/search.png"/></span> </a> </div>
      </form>
    </div>
    <div class="col-md-1"></div>
    <div>

      <ul class="nav navbar-nav" >
        <li class="dropdown">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">生活DIV
            	<ul class="dropdown-menu">
                    <li><a href="index.jsp">生活DIV</a></li>
                    <li><a href="#">旧物改造</a></li>
                    <li><a href="#">废物利用手工</a></li>
                    <li class="divider"></li>
                    <li><a href="#">DIV手工</a></li>
                    <li><a href="#">礼物手工</a></li>
                    <li><a href="#">儿童手工</a></li>
                </ul>
            </a>
        </li>
        <li class="dropdown">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">传统手工
            	<ul class="dropdown-menu">
                    <li><a href="#">传统手工</a></li>
                    <li><a href="#">简笔画</a></li>
                    <li><a href="#">十字绣</a></li>
                    <li class="divider"></li>
                    <li><a href="#">编织</a></li>
                    <li><a href="#">手绘</a></li>
                    <li><a href="#">树叶贴画</a></li>
                </ul>
            </a>
        </li>
        <li class="dropdown">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">民间工艺
            	<ul class="dropdown-menu">
                    <li><a href="#">民间工艺</a></li>
                    <li><a href="#">剪纸</a></li>
                    <li><a href="#">刺绣</a></li>
                    <li><a href="#">中国结</a></li>
                    <li class="divider"></li>
                    <li><a href="#">民族工艺</a></li>
                    <li><a href="#">皮影木偶</a></li>
                </ul>
            </a>
        </li>
        <li class="dropdown">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">雕塑陶艺
            	<ul class="dropdown-menu">
                    <li><a href="#">雕塑陶艺</a></li>
                    <li><a href="#">软陶</a></li>
                    <li><a href="#">橡皮泥</a></li>
                    <li class="divider"></li>
                    <li><a href="#">泥人泥塑</a></li>
                    <li><a href="#">雕刻</a></li>
                    <li><a href="#">超轻粘土</a></li>
                </ul>
            </a>
        </li>
      </ul>

    </div>
    <div class="col-md-1" style="float:right;"></div>
    <div style="float:right;">
      <ul class="nav navbar-nav">
        <li><a href="login.jsp">登录</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="col-md-12" style="padding:50px 500px;">
	<div class="col-md-10">
    <h3 style="margin-bottom:30px; font-weight:bold;">欢迎加入我们——学生注册</h3>
	<form class="form-horizontal" action="StudentRegisterAction_register" method="post" name="registerFrom" onsubmit="return judge();">
    	<div class="form-group">
        	<label class="control-label col-md-3 ft">邮箱</label>
            <div class="col-md-9">
            	<input class="form-control" type="text"  placeholder="请输入您的邮箱"/>
            </div>
        </div>
        <div class="form-group"></div>
        <div class="form-group">
        	<label class="control-label col-md-3 ft">用户名</label>
            <div class="col-md-9">
            	<input class="form-control" type="text" name="name" placeholder="请输入您的用户名"/>
            </div>
        </div>
        <div class="form-group"></div>
        <div class="form-group">
        	<label class="control-label col-md-3 ft">密码</label>
            <div class="col-md-9">
            	<input class="form-control" type="password" id="p1"  placeholder="请输入您账号的密码"/>
            </div>
        </div>
        <div class="form-group"></div>
        <div class="form-group">
        	<label class="control-label col-md-3 ft">确认密码</label>
            <div class="col-md-9">
            	<input class="form-control" type="password" name="password" placeholder="请再一次输入您的密码"/>
            </div>
        </div>
        <div class="form-group"></div>
        <div class="form-group">
        	<div class="col-md-3"></div>
        	<div class="col-md-9">
        		<button class="btn btn-block btn-primary" style="background:#5DAFBA;border:none;" type="submit">注册</button>
            </div>
        </div>
    </form>
    </div>
</div>

</body>
</html>
