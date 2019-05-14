<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jsFile/jquery-3.2.1.min.js"></script>
<script src="resources/jsFile/admin/cityJS.js"></script>

</head>
<body>
	<table>


		<label>도시 코드</label>
		<input type="text" id="citycode">
<br>
<br>

		<label>도시 이름</label>
		<input type="text" id="cityname">
<br>
<br>

		<label>국가(코드)</label>
		<input type="text" id="citycountry">
<br>
<br>
		<%-- 	<select name="국가 선택" id="country">
			<option value="" selected disabled hidden>국가 선택</option>
			<option value="KR">한국(KR)</option>
			<option value="JP">일본(JP)</option>
			<option value="CN">중국(CN)</option>
		</select>
		<br>
		<br>
		<c:if test="">
			<select title="도시 선택" id="city">
				<option value="" selected disabled hidden>도시선택</option>
				<option value="SEL">서울(SEL)</option>
				<option value="SSN">성남(SSN)</option>
				<option value="RSU">여수(RSU)</option>
			</select>
		</c:if>

		<c:if test="">
			<select title="도시 선택" id="city">
				<option value="" selected disabled hidden>도시선택</option>
				<option value="TYO">도쿄(TYO)</option>
				<option value="OSA">오사카(OSA)</option>
				<option value="CTS">삿포로(CTS)</option>
			</select>
		</c:if>

		<c:if test="">
			<select title="도시 선택" id="city">
				<option value="" selected disabled hidden>도시선택</option>
				<option value="HRB">하얼빈(HRB)</option>
				<option value="PEK">북경(PEK)</option>
				<option value="CAN">광저우(CAN)</option>
			</select>
		</c:if> --%>
	</table>
	<button type="button" id = "cityBtn">승인</button>
	&nbsp;
	<button type="reset" value="reset">취소</button>
</body>
</html>