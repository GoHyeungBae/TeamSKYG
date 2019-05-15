<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/jsFile/jquery-3.2.1.min.js"></script>
<script src="resources/jsFile/admin/tourJS.js"></script>
</head>
<body>
	<form id="atour">
		<h2>관광지 등록 하기</h2>
		<table>
			<tr>
				<td bgcolor="yellow">관광지 코드v</td>
				<td><input type="text" name="tour_code" id="tour_code" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">관광지 명v</td>
				<td><input type="text" name="tour_name" id="tour_name" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">관광지 위치v</td>
				<td><input type="text" name="tour_local" id="tour_local" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">관광지 정보x</td>
				<td><input type="text" name="tour_report" id="tour_report" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">영업 시간x</td>
				<td><input type="text" name="tour_time" id="tour_time" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">전화번호x</td>
				<td><input type="text" name="tour_phone" id="tour_phone" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">홈페이지x</td>
				<td><input type="text" name="tour_page" id="tour_page"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">이미지x</td>
				<td><input type="text" name="tour_image" id="tour_image"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">도시 코드v</td>
				<td>
					<select name="city_code" form="atour">
						<option value="01">서울</option>
						<option value="02">부산</option>
					</select>
				</td>
			</tr>
		</table>
		<input type="button" value="등록" id="tourBtn">
		&nbsp;&nbsp;&nbsp; <input type="reset" value="취소">
	
	</form>
</body>
</html>