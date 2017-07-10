<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet" type="text/css" />



</head>
<body>
<div id="wrap">
	<div class="main_top">
		<div class="main_top_container">
			<ul>
				<li>
					<p class="main_top_logo"><b>Make It</b></p>
				</li>
			</ul>
			
			<div class="main_top_setting">
				<ul>
					<li>
						<a href="/makeit/main"><p class="main_top_alarm">&nbsp;</p></a>
					</li>
					<li>
						<a href="/makeit/main"><p class="main_top_Name"> 홍길동</p></a>
					</li>
					<li>
						<p class="main_top_bar">&nbsp;</p>
					</li>
					<li>
						<a href="/makeit/main"><p class="main_top_myPage">마이 페이지</p></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="main_sidebar">
		<jsp:include page="sidebar.jsp"></jsp:include>
	</div>
	
	<div class="main_middle_container">
			<div class="main_advertisement">
				<jsp:include page="advertisement.jsp"></jsp:include>
			</div>
			
			<div class="main_manue">
				<jsp:include page="manue.jsp"></jsp:include>
			</div>
			
			<div class="main_list">
				<jsp:include page="list.jsp"></jsp:include>
			</div>
	</div>
	
	<div class="main_bottom">
		<jsp:include page="bottomMenue.jsp"></jsp:include>
	</div>
	<!-- 
	<div class="main_bottom">
		<div class="main_bottom_line">
			<div class="main_bottom_contatiner">
				<ul>
					<li>
						<a href="additionalInformation" ><p class="main_bottom_tag1"><b>ABOUT MAKE IT</b></p></a>
					</li>
					<li>
						<a href="/makeit/"><p class="main_bottom_tag2"><b>이용약관</b></p></a>
					</li>
					<li>
						<a href="/makeit/"><p class="main_bottom_tag3"><b>운영정책</b></p></a>
					</li>
					<li>
						<a href="/makeit/"><p class="main_bottom_tag4"><b>개인정보취급방침</b></p></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	 -->
</div>
</body>
</html>