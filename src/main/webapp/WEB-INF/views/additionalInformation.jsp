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
						<input type="text" id="user_name" name="user_name" value=""  class="inputText_name">
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
						<input type="radio" id="user_gender" name="user_gender" value="남자"  class="radio_gender_man">
							<p class="radio_gender_text">남자</p>
						<input type="radio" id="user_gender" name="user_gender" value="여자" class="radio_gender_woman">
							<p class="radio_gender_text">여자</p>
					</td>
				</tr>	
				<tr>
					<th rowspan="3"><label for="user_field" class="inputText">관심 분야<p class="inputText_field">(최대 3개 선택가능)</p></label></th>
					<td class="td_noline">
						<ul>
							<li><input type="button"  onclick="planning_idea_click()" id="planning_idea" class="field_unclicked" value="기획 / 아이디어"></li>
							<li><input type="button"  onclick="design_click()" id="design" class="field_unclicked" value="디자인"></li>
							<li><input type="button"  onclick="develope_sw_click()" id="develope" class="field_unclicked field_last" value="개발(소프트웨어)"></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="td_noline">
						<ul>
							<li><input type="button"  onclick="ad_marketing_click()" id="ad_marketing" class="field_unclicked" value="광고 / 마케팅"></li>
							<li><input type="button"  onclick="photo_video_ucc_click()" id="planning_marketing" class="field_unclicked" value="사진 / 영상 / UCC"></li>
							<li><input type="button"  onclick="job_startup_click()" id="planning_marketing" class="field_unclicked field_last" value="취업 / 창업"></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="td_noline">
						<ul>
							<li><input type="button"  onclick="economy_operation_click()" id="planning_marketing" class="field_unclicked" value="경영 / 경제"></li>
							<li><input type="button"  onclick="culture_education_click()" id="planning_marketing" class="field_unclicked" value="문화 / 교육"></li>
							<li><input type="button"  onclick="art_physical_click()" id="planning_marketing" class="field_unclicked" value="예체능"></li>
							<li><input type="button"  onclick="foreign_languages_click()" id="planning_marketing" class="field_unclicked field_last" value="외국어"></li>
						</ul>
					</td>
				</tr>	
				<tr>
					<th colspan="2" style="text-align: center;"><label for="user_range" class="inputText inputText_last">당신이 주로 사용할 기능을 선택해 주세요</label></th>
				</tr>	
				<tr>
					<td colspan="2"  class="td_noline">
						<input type="radio" id="user_range" name="user_range" value="공모전"  class="radio_range1">
							<p class="radio_range_text">공모전</p>
						<input type="radio" id="user_range" name="user_range" value="동아리" class="radio_range2">
							<p class="radio_range_text">동아리</p>
						<input type="radio" id="user_range" name="user_range" value="스타트업" class="radio_range3">
							<p class="radio_range_text radio_range_text_last">스타트업</p>
					</td>
				</tr>
			</table>
			<a href="main" ><p class="start_btn">시작하기</p></a>
		</div>
	</div>
</div>
</body>
</html>