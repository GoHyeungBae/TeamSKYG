<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="resources/jsFile/jquery-3.2.1.min.js" ></script>
<script src="resources/jsFile/layerPopup.js"></script>

<div id="headerNavi">
	
	<img src="./resources/image/includeImage/logo.png">
	
	<button id="planViewBtn">일정 보기</button>
	<button id="planMakeBtn">일정 만들기</button>
	
	<input type="text" id="search" placeholder="검색">
	
	<c:if test="${loginUser == null}">
		<!-- 회원가입 버튼 정의 -->
		<div id="joinfBtn" onclick="javascript:openJoinPopup();">
			<span>join</span>
		</div>
		
		<!-- 로그인 버튼 정의  -->
		<div id="loginfBtn" onclick="javascript:openLoginPopup();">
			<span>Login</span>
		</div>
	</c:if>
	
	<c:if test="${loginUser != null}">
		<nav id="topMenu" >
			<ul>
				<li class="topMenuLi">
					<a class="menuLink" href="#">메뉴</a>
					<ul class="submenu">
						<li><a href="#" class="submenuLink">여행일정</a></li>
						<li><a href="#" class="submenuLink">리뷰</a></li>
						<li><a href="#" class="submenuLink">Q&A</a></li>
						<!-- 로그인 후 버튼 정의 (로그아웃)  -->
						<li><a href="logout" class="submenuLink" id="logoutBtn">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</c:if>
	
</div>
<!-- #headerNavi -->
