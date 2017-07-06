<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
$(function(){ //��ü���� üũ�ڽ� Ŭ�� 
	$("#allCheck").click(function(){ //���� ��ü ���� üũ�ڽ��� üũ�Ȼ����ϰ�� 
		if($("#allCheck").prop("checked")) { //�ش�ȭ�鿡 ��ü checkbox���� üũ���ش� 
			$("input[type=checkbox]").prop("checked",true); // ��ü���� üũ�ڽ��� ������ ��� 
			} else { //�ش�ȭ�鿡 ��� checkbox���� üũ��������Ų��. 
				$("input[type=checkbox]").prop("checked",false); } 
	}) 
})


			
</script>
<body>
		<h6>�ֽŰ�</h6>

		<input type=button class="btn btn-theme" value="���ô��">

	<table class="table table-hover">
		<thead>
			<tr>
				<th width=10%><input type="checkbox" value="" id="allCheck">
				</th>
				<th width=10%>����</th>
				<th width=20%>�ٹ�</th>
				<th width=20%>����</th>
				<th width=20%>��Ƽ��Ʈ</th>
				<th width=20%>�ٹ�����</th>
			</tr>
		</thead>
		<tbody>
			<%
				int i = 1;
			%>
			<c:forEach var="vo" items="${list }">

				<tr>
					<td><input type="checkbox" value="${vo.music_id }" name="checkbox_name" >
					</td>
					<td><span><%=i%></span><span>��</span></td>
					<td><img
						src="http://211.238.142.109:8080/album_img/${vo.album_art }.jpg"
						width=50 height=50> <input type="button" value="���">
						<input type="button" value="���"></td>
					<td>${vo.music_name }</td>
					<td>${vo.music_artist }</td>
					<td>${vo.album_name }</td>
				</tr>
				<%i++;%>
			</c:forEach>
		</tbody>
	</table>
		
	
</body>
</html>