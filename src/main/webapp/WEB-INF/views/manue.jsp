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
			<li><input type="button"  onclick="competition_click()" id="competition" class="manue_clicked" value="������"></li>
			<li><input type="button"  onclick="circles_click()" id="circles" class="manue_unclicked" value="���Ƹ�"></li>
			<li><input type="button"  onclick="startup_click()" id="startup" class="manue_unclicked" value="��ŸƮ��"></li>
		</ul>
	</div>
	<div class="manue_search">
		<select id="attention_field" name="attention_field" class="attention_field">
			<option selected="selected">��ü�о�</option>
			<option>��ȹ/���̵��</option>
			<option>������</option>
			<option>����(����Ʈ����)</option>
			<option>����/������</option>
			<option>����/����/UCC</option>
			<option>���/â��</option>
			<option>����/�濵</option>
			<option>��ȭ/����</option>
			<option>��ü��</option>
			<option>�ܱ���</option>
		</select>
		
		<select id="sort_order" name="sort_order" class="sort_order">
			<option selected="selected">�ֽż�</option>
			<option>��õ��</option>
		</select>
		
		<input type="text" value="&nbsp;�˻�� �Է��� �ּ���." class="search">
	</div>
</body>
</html>