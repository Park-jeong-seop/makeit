<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script language="javascript" type="text/javascript">
	function competition_click(){
		document.getElementById("competition").className = "manue_clicked";
		document.getElementById("circles").className = "manue_unclicked";
		document.getElementById("startup").className = "manue_unclicked";
	}
	function circles_click(){
		document.getElementById("competition").className = "manue_unclicked";
		document.getElementById("circles").className = "manue_clicked";
		document.getElementById("startup").className = "manue_unclicked";
	}
	function startup_click(){
		document.getElementById("competition").className = "manue_unclicked";
		document.getElementById("circles").className = "manue_unclicked";
		document.getElementById("startup").className = "manue_clicked";
	}
</script>
</head>
<body>
	<div class="manue_tab">
		<ul>
			<li><input type="button"  onclick="competition_click()" id="competition" class="manue_clicked" value="공모전"></li>
			<li><input type="button"  onclick="circles_click()" id="circles" class="manue_unclicked" value="동아리"></li>
			<li><input type="button"  onclick="startup_click()" id="startup" class="manue_unclicked" value="스타트업"></li>
		</ul>
	</div>
	<div class="manue_search">
		<select id="attention_field" name="attention_field" class="attention_field">
			<option selected="selected">전체분야</option>
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
		
		<select id="sort_order" name="sort_order" class="sort_order">
			<option selected="selected">최신순</option>
			<option>추천순</option>
		</select>
		
		<input type="text" value="&nbsp;검색어를 입력해 주세요." class="search">
	</div>
</body>
</html>