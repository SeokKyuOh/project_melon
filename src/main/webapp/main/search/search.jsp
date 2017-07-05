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
	<ul class="nav nav-tabs" style="width:80%">
		<li><a href="#">아티스트</a></li>
		<li><a href="#">곡</a></li>
		<li><a href="#">앨범</a></li>
	</ul>
		<div class="center_content" style="width:80%">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>아티스트(검색갯수)</th>
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
					<c:forEach var="mvo_artist" items="${mvo_artist }">
						<c:forEach var="i" begin="1" end="10" step="1">
							<tr>
								<td>1</td>
								<td>${mvo_artist.music_name }</td>
								<td>${mvo_artist.music_artist }</td>
								<td>${mvo_artist.album_name }</td>
							</tr>
						</c:forEach>
					</c:forEach>
				</tbody>
			</table>
			<div style="text-align:right"><a href="search_artist.do">아티스트 검색 결과 더보기</a></div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>곡(검색갯수)</th>
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
					<c:forEach var="mvo_song" items="${mvo_song }">
						<tr>
							<td>1</td>
							<td>${mvo_song.music_name }</td>
							<td>${mvo_song.music_artist }</td>
							<td>${mvo_song.album_name }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div style="text-align:right"><a href="search_song">곡 검색 결과 더보기</a></div>
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


