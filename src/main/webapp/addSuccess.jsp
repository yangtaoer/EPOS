<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="web.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<title>添加成功</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/addcuisine.js"></script>
<style>
#all {
	position:fixed;
	top:0;
}
#add {
	border: 1px solid #808080;
	width: 300px;
	height:200px;
	color:#008CBA;
	text-align: center;
	padding: 30px;
	margin: 300px auto;
	font-size : 30px;
	background-color:#888888;
	opacity:0.4;
}

#add div {
	width: 300px;
	height:20px;
	color:#008CBA;
	font-size : 16px;
	text-align: center;
	border-radius: 12px;
	background-color: #008CBA;
	border: 2px solid #008CBA;
}
</style>
</head>
<body>
<div id="all">
	<div id="logo"></div>
	<div id="s1" class="s"><a href="sell.jsp">销量查询</a></div>
	<div id="s2" class="s"><a href="cuisine.jsp">菜品查询</a></div>
	<div id="s3" class="s"><a href="javascript:;">订单查询</a></div>
	<div id="s4" class="s"><a href="javascript:;">注册会员</a></div>
	<div class="user"><br>
		<div id="userimg"></div>
		&nbsp;&nbsp;&nbsp;你好，
		<%	
			//int id = (int)request.getAttribute("id");
			CuisineDao dao = new CuisineDao();
			String name = dao.findName(1);
			PageObject po = (PageObject)request.getAttribute("po");
		%>
		<input type='hidden' value="<%= po %>" id="po" >  
		<%=name %>
		&nbsp;&nbsp;<a href="login.jsp">退出</a>
	</div>
	<div id="add">
		<br>添加成功<br><br>
		<div id="sell"><a href="cuisine.jsp">返回主页</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div><a href="addCuisine.jsp">继续添加</a></div>
	</div>
</div>
</body>
</html>