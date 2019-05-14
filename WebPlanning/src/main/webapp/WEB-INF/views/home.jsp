<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/headerCSS.css"/>'>
	
	<script src="resources/jsFile/jquery-3.2.1.min.js" ></script>
	<script src="resources/jsFile/layerPopup.js"></script>
	
	<title>Home</title>
</head>
<body>

<div>
	<!-- header include -->
	<jsp:include page="include/header.jsp" />
</div>

<div id="layerPopup"></div>
<div id="join_layerPopup">
	<iframe id="joinIFrame" src="" name="joinIFrame" width="500" height="650" frameborder="0" leftmargin="0" topmargin="0"scrolling="no"></iframe>
</div>

<div id="login_layerPopup">
	<iframe id="loginIFrame" src="" name="joinIFrame" width="500" height="300" frameborder="0" leftmargin="0" topmargin="0"scrolling="no"></iframe>
</div> 
<br><br>

<div>
	<h1>
		여기 메인 페이지.
	</h1>
</div>

<br><br>
<div>
	<!-- footer include -->
	<jsp:include page="include/footer.jsp" />
</div>

</body>
</html>
