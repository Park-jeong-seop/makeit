<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script language="javascript" type="text/javascript">
	window.onload = function add_item(){
	    // pre_set �� �ִ� ������ �о�ͼ� ó��..
	    var div = document.createElement('div');
	    div.innerHTML = document.getElementById('list_td1').innerHTML;
	    document.getElementById('list_field').appendChild(div);
	}

	var td1 =  '<div class="list_td1">'
						+'<div class="td1_img">'
								+'<div class="td1_txt">'
									+'<div class="td1_recruit_count">'
									
									+'</div>'
								+'</div>'
						+'</div>'
					+'</div>'
</script>

</head>
<body>
	<div id="list_td1">
    	<div class="td1_img">&nbsp;</div>
    	<div class="td1_txt">
	    	<div class="td1_name">
	    		<%="" %>÷�ܰ�ӵ��� ������� ������
	    	</div>
	    	<div class="td1_period">
	    		<%="" %>�������Ⱓ : 2017-02-21 ~ 2017-04-17 
	    	</div>
    	</div>
    	<div class="td1_recruit_count">
    		���� <%="8" %>���� �������Դϴ�.
    	</div>
	</div>

	<div class="list_field">
		
	</div>
</body>
</html>