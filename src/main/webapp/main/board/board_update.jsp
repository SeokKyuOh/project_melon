<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script><!-- ���̺귯�� �ε� -->
<script type="text/javascript">
/*
 	jquery : javascript ���̺귯�� (DOMSCRIPT)
	====
		DOM => �±׸� �����ϴ� ���α׷�
		1)selector - �±� ����� �� ���°�
 
 
 var fileIndex=0;
 $(function(){
 	$('#addBtn').click(function(){
 		$('#fileView').append(
 		   '<tr id=f'+fileIndex+'>'
 		  +'<td width=20%>����'+(fileIndex+1)+'</td>'
 		  +'<td width=80%><input type=file name=upload['+fileIndex+'] size=25></td>'
 		  +'</tr>'
 		);
 		fileIndex=fileIndex+1;
 	});
     $('#removeBtn').click(function(){
     	if(fileIndex>0)
     	{
 		  $('#f'+(fileIndex-1)).remove();
 		  fileIndex=fileIndex-1;
     	}
 	});
 });
 
 */
</script>
</head>
<body>
	<center>
		<h3>�����ϱ�</h3>
		<form method=post action="board_update_ok.do" enctype="multipart/form-data">
			<table id="table_content" width=600>
				<tr>
					<td width=15%>�̸�</td>
					<td width=85%>
						<input type="text" name="board_writer" size=12 value="${vo.board_writer }">
						<input type=hidden name=board_id value="${vo.board_id }">
						
					</td>
				</tr>
				<tr>
					<td width=15%>����</td>
					<td width=85%>
						<input type="text" name="board_title" size=50 value="${vo.board_title }">
					</td>
				</tr>
				<tr>
					<td width=15%>����</td>
					<td width=85%>
						<textarea rows="10" cols="55" name="board_content">${vo.board_content }</textarea>
					</td>
				</tr>
<!-- 				<tr>
					<td width=15%>��й�ȣ</td>
					<td width=85%>
						<input type="password" name=pwd size=10>
					</td>
				</tr>
 -->				<tr>
					<td colspan="2" align="center">
						<input type=submit value="����">
						<input type=button value="���" onClick="javascript:history.back()"> <!-- ������ ������ ����ǥ �� �ٿ��� ������ ������ ����ǥ �ݵ�� �ٿ����� -->
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>