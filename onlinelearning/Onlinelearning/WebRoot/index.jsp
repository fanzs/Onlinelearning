<%@ page language="java" import="java.util.*,com.onlinelearning.entity.*" pageEncoding="utf-8"%>
<%@ page import="com.onlinelearning.service.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	response.sendRedirect("toMain.action");
%>
<%
//		List<Teacher> allTeachers = TeacherService.getInstance().getAllTeachers();
//		request.getSession().setAttribute("allteachers", allTeachers);
 %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<title>在线授艺平台</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" language="javascript"></script>
</head>

<body>
 
</body>
</html>

