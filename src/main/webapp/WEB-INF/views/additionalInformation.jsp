<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="wrap">
	<div class="addInfo_top">
		<div class="addInfo_top_contatiner">
			<p class="addInfo_top_txt"><b>Make It</b></p>
		</div>
	</div>
	
	<div class="addInfo_wrap">
		<div class="addInfo_container">
			<p class="addInfo_name"><b>추가정보입력</b></p>
			<p class="addInfo_help">더 나은 서비스 제공을 위한 절차이므로, 정보 입력 후 서비스를 이용하실 수 있습니다.</p>
			
			<table class="join_table">
				<tr>
					<th><label for="user_name" class="inputText">이름</label></th>
					<td>
						<input type="text" id="user_name" name="user_name" value=""  class="inputText">
					</td>
				</tr>
				<tr>
					<th><label for="user_birth" class="inputText">생년월일</label></th>
					<td>
						<select id="user_birth" name="user_birth" class="inputText_year">
							<option selected="selected" disabled="disabled" >선택</option>
							<%
								String toyear = new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
								for (int i=Integer.parseInt(toyear);  i>1960 ; i--) {
							%>		
							<option value="<%= i %>"><%= i %>년</option>
							<%} %>
						</select>
						년
						<select id="user_birth" name="user_birth" class="inputText_month_date">
							<option value="0"  selected="selected" disabled="disabled">선택</option>
							<%
								for (int i=1;  i<=12 ; i++) {
							%>		
							<option value="<%= i %>"><%= i %>월</option>
							<%} %>
						</select>
						월
						<select id="user_birth" name="user_birth" class="inputText_month_date">
							<option value="0"  selected="selected" disabled="disabled">선택</option>
							<%
								for (int i=1;  i<=31 ; i++) {
							%>		
							<option value="<%= i %>"><%= i %>일</option>
							<%} %>
						</select>
						일
					</td>
				</tr>	
				<tr>
					<th><label for="user_gender" class="inputText">성별</label></th>
					<td>
						<input type="radio" id="user_gender" name="user_gender" value="남자"  class="radio_gender1">남자
						<input type="radio" id="user_gender" name="user_gender" value="여자" class="radio_gender2">여자
					</td>
				</tr>	
				<tr>
					<th><label for="user_field" class="inputText">관심 분야</label></th>
					<td>
						<ul>
							<li><input type="button"  onclick="planning_idea_click()" id="planning_idea" class="field_unclicked" value="기획/아이디어"></li>
							<li><input type="button"  onclick="design_marketing_click()" id="design" class="field_unclicked" value="디자인"></li>
							<li><input type="button"  onclick="develope_marketing_click()" id="develope" class="field_unclicked" value="개발(소프트웨어)"></li>
							<li><input type="button"  onclick="ad_marketing_click()" id="ad_marketing" class="field_unclicked" value="광고/마케팅"></li>
						</ul>
						<ul>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="기획/아이디어"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="디자인"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="개발(소프트웨어)"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="광고/마케팅"></li>
						</ul>
						<ul>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="기획/아이디어"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="디자인"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="개발(소프트웨어)"></li>
							<li><input type="button"  onclick="planning_marketing_click()" id="planning_marketing" class="field_unclicked" value="광고/마케팅"></li>
						</ul>
						<!-- 
						<select id="user_field1" name="userfield1" class="inputText_field">
							<option selected="selected" disabled="disabled" >선택</option>
							<option>기획/아이디어</option>
							<option>디자인</option>
							<option>개발(소프트웨어)</option>
							<option>광고/마케팅</option>
							<option>사진/영상/UCC</option>
							<option>취업/창업</option>
							<option>경제/경영</option>
							<option>문화/교육</option>
							<option>예체능</option>
							<option>외국어</option>
						</select>
						<select id="user_field2" name="userfield2" class="inputText_field">
							<option selected="selected" disabled="disabled" >선택</option>
							<option>기획/아이디어</option>
							<option>디자인</option>
							<option>개발(소프트웨어)</option>
							<option>광고/마케팅</option>
							<option>사진/영상/UCC</option>
							<option>취업/창업</option>
							<option>경제/경영</option>
							<option>문화/교육</option>
							<option>예체능</option>
							<option>외국어</option>
						</select>
						<select id="user_field3" name="userfield3" class="inputText_field">
							<option selected="selected" disabled="disabled" >선택</option>
							<option>기획/아이디어</option>
							<option>디자인</option>
							<option>개발(소프트웨어)</option>
							<option>광고/마케팅</option>
							<option>사진/영상/UCC</option>
							<option>취업/창업</option>
							<option>경제/경영</option>
							<option>문화/교육</option>
							<option>예체능</option>
							<option>외국어</option>
						</select>
						 -->
					</td>
				</tr>	
				<tr>
					<th colspan="2" style="text-align: center;"><label for="user_range" class="inputText_last">당신이 주로 사용할 기능을 선택해 주세요</label></th>
				</tr>	
				<tr>
					<td colspan="2" >
						<input type="radio" id="user_gender" name="user_gender" value="공모전"  class="radio_range1">공모전
						<input type="radio" id="user_gender" name="user_gender" value="동아리" class="radio_range2">동아리
						<input type="radio" id="user_gender" name="user_gender" value="스타트업" class="radio_range3">스타트업
					</td>
				</tr>
			</table>
			<a href="main" ><p class="start_btn">시작하기</p></a>
		</div>
	</div>
</div>
</body>
</html>