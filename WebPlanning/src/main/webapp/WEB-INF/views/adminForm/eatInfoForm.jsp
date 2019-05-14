<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/jsFile/jquery-3.2.1.min.js"></script>
<script src="resources/jsFile/admin/eatInfoJS.js"></script>

</head>
<body>
	<form id="eatInfoF">
	<h1 align="center">식당정보 등록</h1>
	<h4>
	음식점 코드 : <input type="text" name="eat_code" id="eat_code"> 
	<br>
	음식점 명 : <input type="text" name="eat_name" id="eat_name">  
	<br>
	위치 : <input type="text" name="eat_local" id="eat_local">
	<br>
	음식점 정보 : <input type="text" name="eat_report" id="eat_report">
	<br>
	영업시간 : <input type="text" name="eat_time" id="eat_time">
	<br>
	전화번호 : <input type="text" name="eat_phone" id="eat_phone">
	<br>
	홈페이지 : <input type="text" name="eat_page" id="eat_page">
	<br>
	이미지  : <input type="text" name="eat_image" id="eat_image">
	<br>
	도시 코드:<input type="text"  name="city_code" id="city_code">
	<br>
	<br>
	</h4>
	<input type="button" id="eatInfoBtn" value="전송"> &nbsp;
	<input type="reset" value="reset">
	</form> 
</body>
</html>