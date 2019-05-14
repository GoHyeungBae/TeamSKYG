<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/joinCSS.css"/>'>

<script src="resources/jsFile/jquery-3.2.1.min.js" ></script>
<script src="resources/jsFile/layerPopup.js"></script>
<script src="resources/jsFile/user/joinJS.js"></script>

<script type="text/javascript">
	var closePopup = function() {
		$('#join_layerPopup',parent.document).hide();
		$('#layerPopup',parent.document).hide();
	}
</script>

<table width="100%" height="10">
	<tr>
		<td align="right">
			<a href="javascript:closePopup();">
				<img alt="창닫기" src="./resources/image/joinImage/close_btn.gif" style="border: 0">
			</a>
		</td>
	</tr>
</table>

<form id="joinform">
	

	<div id="join_title">회 원 가 입</div> <br>
	
	<!-- 이메일 입력 -->
	<input type="text" name="email" id="email" placeholder="이메일 주소"> <br><br>
	
	<!-- 패스워드 입력 -->
	<input type="password" name="password" id="password" placeholder="비밀번호"> <br>

	<!-- 패스워드 동일성 확인 -->
	<input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 확인"> <br>
	<div id="pw_checktext" ></div> <br><br>

	<!-- 이름 입력 -->
	<input type="text" name="name" placeholder="이름"> <br><br>
	
	<!-- 생년월일 입력 (숫자만 입력가능) -->
	<input type="text" name="birth"  placeholder="생년월일(ex 20190426)" 
		oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"> <br><br>
	<!-- oninput = " 숫자만 입력하게 하는 정규식. " -->
	
	<!-- 성별 입력 -->
	<input type="radio" name="gender" value="M" /> 남성 
	<input type="radio" name="gender" value="F" /> 여성 <br><br>
	
	<div id="joinBtn">회원가입</div> <br><br>
	
	<div>
		<label>이미 회원이신가요?</label> <a href="">로그인</a>
	</div> <br>
	
	<!-- 약관 동의 -->
	<div class="checkboxCSS">
		<input type="checkbox" name="agree">약관 동의
	</div>
	
</form>
