<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script><!-- ���̺귯�� �ε� -->
<script type="text/javascript">
/*
 	jquery : javascript ���̺귯�� (DOMSCRIPT)
	====
		DOM => �±׸� �����ϴ� ���α׷�
		1)selector - �±� ����� �� ���°�
 
 */
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
</script>
</head>
<body>
	<center>
		<h3>�۾���</h3>
		<form method=post action="board_insert_ok.do" enctype="multipart/form-data">
			<input type="hidden" name="boardType_id" value="1">
			<table id="table_content" width=1000>
				<tr>									

				<th>�ۼ���</th>						

				<td><input type="text" name="board_writer" size="20" /></td>

			</tr>
			<tr>

				<th>����</th>

				<td><input type="text" name="board_title" size="60" /></td>

			</tr>


		<tr>

				<th height="500px">����</th>

				<td><textarea rows="30" cols="80" name="board_content"></textarea></td>

			</tr>

				<tr>
					<th>÷������</th>
					<td>
						<table>
							<tr>
								<td>
									<input type=button id="addBtn" value="�߰�">
									<input type=button id="removeBtn" value="����">
								</td>
							</tr>
						</table>
						<table id="fileView">
						</table>
					</td>
				</tr>




				<tr>
					<td colspan="2" align="right">
						<input type=submit value="�۾���">
						<input type=button value="���" onClick="javascript:history.back()"> <!-- ������ ������ ����ǥ �� �ٿ��� ������ ������ ����ǥ �ݵ�� �ٿ����� -->
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>