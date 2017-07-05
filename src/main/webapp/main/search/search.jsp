<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
</head>
<body>
	<section id="contentSection">
		<div class="center_content" style="width:80%">
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
					<c:if test="${artist_list.size()>=10}" >
					<c:forEach var="artist_list" items="${artist_list }" begin="1" end="10" step="1">
						<tr>
							<td><%=i %></td>
							<td>${artist_list.music_name }</td>
							<td>${artist_list.music_artist }</td>
							<td>${artist_list.album_name }</td>
						</tr>
						<% i++; %>
					</c:forEach>
					</c:if>
					<c:if test="${artist_list.size()<10}" >
					<c:forEach var="artist_list" items="${artist_list }">
						<tr>
							<td><%=i %></td>
							<td>${artist_list.music_name }</td>
							<td>${artist_list.music_artist }</td>
							<td>${artist_list.album_name }</td>
						</tr>
						<% i++; %>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<div style="text-align:right"><a href="search_artist.do" style="color: blue; font: bold;">아티스트 검색 결과 더보기</a></div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>곡명으로 검색(<span style="color:red">${song_list_size }</span>)</th>
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
					<% int j = 1; %>
					<c:if test="${song_list.size()>=10}">
					<c:forEach var="song_list" items="${song_list }" begin="1" end="10" step="1">
						<tr>
							<td><%=j %></td>
							<td>${song_list.music_name }</td>
							<td>${song_list.music_artist }</td>
							<td>${song_list.album_name }</td>
						</tr>
					<% j++; %>
					</c:forEach>
					</c:if>
					
					<c:if test="${song_list.size()<10}">
					<c:forEach var="song_list" items="${song_list }">
						<tr>
							<td><%=j %></td>
							<td>${song_list.music_name }</td>
							<td>${song_list.music_artist }</td>
							<td>${song_list.album_name }</td>
						</tr>
					<% j++; %>
					</c:forEach>
					</c:if>
					
				</tbody>
			</table>
			<div style="text-align:right"><a href="search_song.do" style="color: blue; font: bold;">곡 검색 결과 더보기</a></div>
			
			<table class="table table-hover">
				<thead>
					<tr>
						<th>앨범(검색갯수)/ 배열로 구성 예정</th>
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
					<tr>
						<td>1</td>
						<td>우주를 줄게</td>
						<td>볼빨간사춘기</td>
						<td>Full Album RED PLANET</td>
					</tr>
					<tr>
						<td>2</td>
						<td>비도 오고 그래서</td>
						<td>헤이즈</td>
						<td>(너 먹구름 비)</td>
					</tr>
				</tbody>
			</table>
			<div style="text-align:right"><a href="search_song">앨범 검색 결과 더보기</a></div>
		</div>
	</section>
</body>
</html>


