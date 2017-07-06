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
$(function(){ //전체선택 체크박스 클릭 
	$("#allCheck").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우 
		if($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다 
			$("input[type=checkbox]").prop("checked",true); // 전체선택 체크박스가 해제된 경우 
			} else { //해당화면에 모든 checkbox들의 체크를해제시킨다. 
				$("input[type=checkbox]").prop("checked",false); } 
	}) 
})


			
</script>
<body>
		<h6>최신곡</h6>

		<input type=button class="btn btn-theme" value="선택담기">

	<table class="table table-hover">
		<thead>
			<tr>
				<th width=10%><input type="checkbox" value="" id="allCheck">
				</th>
				<th width=10%>순위</th>
				<th width=20%>앨범</th>
				<th width=20%>음악</th>
				<th width=20%>아티스트</th>
				<th width=20%>앨범정보</th>
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
					<td><span><%=i%></span><span>위</span></td>
					<td><img
						src="http://211.238.142.109:8080/album_img/${vo.album_art }.jpg"
						width=50 height=50> <input type="button" value="재생">
						<input type="button" value="담기"></td>
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