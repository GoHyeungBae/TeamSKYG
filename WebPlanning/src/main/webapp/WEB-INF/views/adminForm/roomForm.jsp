<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/jsFile/jquery-3.2.1.min.js"></script>
<script src="resources/jsFile/admin/roomJS.js"></script>

</head>
<body>
	<form id="aroom" >
		<h2>호텔 등록 하기</h2>
		<table>
			<tr>
				<td bgcolor="yellow">숙소 코드</td>
				<td><input type="text" name="room_code" id="room_code" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">숙소 명</td>
				<td><input type="text" name="room_name" id="room_name" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">숙소 위치</td>
				<td><input type="text" name="room_local" id="room_local" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">숙소 정보</td>
				<td><input type="text" name="room_report" id="room_report" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">체크인</td>
				<td><input type="text" name="room_in" id="room_in" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">체크 아웃</td>
				<td><input type="text" name="room_out" id="room_out" size="10"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">1박 금액</td>
				<td><input type="text" name="room_price" id="room_price"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">이미지(사진)</td>
				<td><input type="text" name="room_image" id="room_image"></td>
			</tr>
			<tr>
				<td bgcolor="yellow">도시 코드</td>
				<td>
					<select name="city_code" form="aroom">
						<option value="01">서울</option>
						<option value="02">부산</option>
					</select>
				</td>
			</tr>
		</table>
		<input type="button" value="등록" id="roomBtn">
		&nbsp;&nbsp;&nbsp; <input type="reset" value="취소">
	
	</form>
</body>
</html>