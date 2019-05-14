<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/loginCSS.css"/>'>

<script src="resources/jsFile/jquery-3.2.1.min.js" ></script>
<script src="resources/jsFile/layerPopup.js"></script>
<script src="resources/jsFile/user/login.js"></script>

<script type="text/javascript">
	var closePopup = function() {
		$('#login_layerPopup',parent.document).hide();
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

<form name="loginForm">

	<%-- <input type="hidden" name="_csrf" value="${_csrf.token }"> --%>
		<div id="login-title">
			<b>로그인</b>
		</div>
		<div id="info-group">
			<label>아이디(이메일 주소)</label> <br>
			<input type="text" name="email" id="email" placeholder="이메일 주소"> <br><br>
			
			<label>비밀번호</label><br>
			<input type="password" name="password" id="password" placeholder="비밀번호"> <br>
			
			<div class="clear_f"></div>
		</div>
		<br>
		
		<div id="loginBtn">로그인</div>
		
</form>

