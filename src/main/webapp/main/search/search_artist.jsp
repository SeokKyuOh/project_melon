<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아티스트 검색결과</title>
</head>
<body>
	<section id="contentSection">
	<div class="center_content" style="width: 80%">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>아티스트명으로 검색(<span style="color:red">${artist_list_size }</span>)</th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>NO</th>
					<th>곡명</th>
					<th>아티스트</th>
					<th>앨범</th>
				</tr>
			</thead>
			<tbody>
				<% int i = 1; %>
				<c:forEach var="artist_list" items="${artist_list }">
						<tr>
							<td><%=i %></td>
							<td>${artist_list.music_name }</td>
							<td>${artist_list.music_artist }</td>
							<td>${artist_list.album_name }</td>
						</tr>
						<%i++; %>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</section>
</body>
</html>