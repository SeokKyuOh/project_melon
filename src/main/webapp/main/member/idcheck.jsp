<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="assets/css/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#idBtn').click(function(){
		var id=$('#id').val();		//�Էµ� �� �������� �� val
		if(id.trim()==""){
			alert("ID�� �Է��ϼ���");
			$('#id').focus();
			return;
		}
		
		/*
			HttpRequest => req
			req.open(METHOD, URL, true)			//type, url
			req.onreadystatechange=callback;
			req.send("id="+id)							// data
			
			function callback(){
				if(req.readystate==4){
					if(req.status==200){
						
					}			
				}
			}
			
			���� ������� �Ʒ��� ajax���� success��� �Լ��� ����������.
		*/
		
		$.ajax({
			type:"POST",
			url:"idcheck_result.do",
			data:{"id":id},
			success:function(response){
				$('#id_view').html(response);
				// �� var dir=document.getElementById("");
				//    dir.innerHTML=req.responseText;			�̰Ͱ� ���� ȿ��
			}
		});
	});
	
});
</script>
</head>
<body>
	<center>
		<div style="height:30px"></div>
		<table id="table_content" width=300>
			<tr>
				<td align=left>
					ID:<input type=text name=id size=12 id="id">
					<input type=button value="���̵�üũ" id="idBtn">
				</td>
			</tr>
		</table>
		<div id="id_view"></div>
	</center>
</body>
</html>















