<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
	function openKakao(){  
	    window.open("https://kauth.kakao.com/oauth/authorize?client_id=7e0540b264fec8a954659770843a3067&redirect_uri=http://localhost:12219/makeit/KakaoLogin&response_type=code", "카카오 로그인","width=450, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}
	
	function openFacebook(){  
	    window.open("https://www.facebook.com/v2.8/dialog/oauth?client_id=1227350160653331&redirect_uri=http://localhost:12219/makeit/FacebookLogin&response_type=code", "페이스북 로그인","width=800, height=800, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}
</script>

</head>
<body>
<div id="wrap">
	<div class="login_wrap">
		<div class="login_container">
			<div class="login_slogun">
				<dl><!-- 정의 목록 -->
					<dd class="login_logo_name">make it</dd><!-- 정의 설명 -->
					<dd class="login_logo_help">같이 만드는 가치</dd>
				</dl>
			</div>
			<div class="login_btn_list">
				<a href="" onclick="openFacebook()"><p class="btn_facebook"><b>페이스북으로 시작하기</b></p></a>
				<!-- <a href="https://www.facebook.com/v2.8/dialog/oauth?client_id=1227350160653331&redirect_uri=http://localhost:12219/makeit/FacebookLogin&response_type=code" ><p class="btn_kakao"><b>카카오톡으로 시작하기</b></p></a> -->
				<!--  <a href="" onclick="openKakao()"><p class="btn_kakao"><b>카카오톡으로 시작하기</b></p></a>-->
				<a href="https://kauth.kakao.com/oauth/authorize?client_id=7e0540b264fec8a954659770843a3067&redirect_uri=http://localhost:12219/makeit/additionalInformation&response_type=code" ><p class="btn_kakao"><b>카카오톡으로 시작하기</b></p></a>
			</div>
		</div>
	</div>
	
	<div class="main_bottom">
		<jsp:include page="bottomMenue.jsp"></jsp:include>
	</div>
</div>
</body>
</html>
