<!-- 멜론차트 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멜론차트</title>
</head>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	$(function() { //전체선택 체크박스 클릭 
		$("#allCheck").click(function() { //만약 전체 선택 체크박스가 체크된 상태일 경우 
			if ($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다 
				$("input[type=checkbox]").prop("checked", true); // 전체선택 체크박스가 해제된 경우 
			} else { //해당화면에 모든 checkbox들의 체크를 해제시킨다. 
				$("input[type=checkbox]").prop("checked", false);
			}
		})
	})
	$(function() {
		$('input:checkbox[name="checkbox_name"]').click(function() {

			this.checked = true; //checked 처리

			if (this.checked) {//checked 처리된 항목의 값

				//alert(this.value);
			}
		});
	});
</script>

<!-- <link rel="stylesheet"
	href="http://cdnimg.melon.co.kr/static/web/resource/style/w1/xk/q/1o7f6grizjx.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://cdnimg.melon.co.kr/static/web/resource/style/w1/lu/h/una7b19ci5.css"
	type="text/css" />
댓글 css 파일 네임 변경
<link rel="stylesheet"
	href="http://cdnimg.melon.co.kr/static/web/resource/style/w1/qd/e/uolshpokn9.css"
	type="text/css" />
<link rel="stylesheet"
	href="/resource/style/web/chart/melonweb_chart.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="//member.melon.com/resource/script/web/member/melonweb_member_external.js?tm=20170424"></script>
<script type="text/javascript"
	src="http://cdnimg.melon.co.kr/static/web/resource/script/w1/g8/u/kv5d3h4q8t.js"></script>
<script type="text/javascript"></script> -->
<body>

	<%-- <table border="1" style="width: 1008px">
		<caption>실시간 차트</caption>
		<colgroup>
			<col style="width: 29px" />
			<col style="width: 80px" />
			<col style="width: 64px" />
			<col style="width: 630px" />
			<col style="width: 82px" />
			<col style="width: 49px" />
			<col style="width: 25px" />
			<col style="width: 49px" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col"><div class="wrap pd_none left">
						<input type="checkbox" title="곡 목록 전체 선택"
							class="input_check d_checkall" />
					</div></th>
				<th scope="col"><div class="wrap pd_none">순위</div></th>
				<th scope="col"><div class="wrap none">앨범</div></th>
				<th scope="col"><div class="wrap">곡정보</div></th>
				<th scope="col"><div class="wrap pd_none">다운</div></th>
			</tr>
		</thead>
		<tbody id="chartListObj">
		<%int i=1; %>
			<c:forEach var="vo" items="${list }">

				<tr class="lst50" id="lst50">

					<td><div class="wrap pd_none left">
							<input type="checkbox" class="input_check" name="input_check"
								value="30468654" />
						</div></td>

					<td class="t_left"><div class="wrap right_none">
							<span class="rank top"><%=i %></span> <span class="none">위</span>
						</div></td>

					<td><div class="wrap">
							<a href="javascript:melon.link.goAlbumDetail('10070846');"
								class="image_type15" title="남이 될 수 있을까 - 페이지 이동"> <img
								width="48"
								height="48"
								src="http://211.238.142.109:8080/food/main/album_img/${vo.album_art }.jpg" 
								alt="남이 될 수 있을까 - 페이지 이동" /> <!-- <span class="bg_album_frame"
												onclick="javascript:melon.link.goAlbumDetail('10070846');" 
												></span> -->
								<!-- onerror="WEBPOCIMG.defaultAlbumImg(this);" -->				
							</a> <br>
						</div></td>
					<td class="t_left"><div class="wrap">
							<button type="button" class="btn_icon play"
								data-song-no="30468654">
								<span class="odd_span">재생</span>
							</button>
							<button type="button" class="btn_icon add"
								title="남이 될 수 있을까 담기 - 새창"
								onclick="melon.play.addPlayList(30468654);">
								<span class="odd_span">담기</span>
							</button>
							<a href="javascript:melon.link.goSongDetail('30468654');"
								title="남이 될 수 있을까 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span
								class="odd_span">남이 될 수 있을까 상세정보 페이지 이동</span></a>
							<div class="wrap_song_info">
								<div class="ellipsis rank01">
									<span> <strong><a
											href="javascript:melon.play.playSong('19030101','30468654');"
											title="남이 될 수 있을까 재생 - 새창">${vo.music_name }</a></strong>
									</span>
								</div>
								<div class="ellipsis rank02">
									<span>${vo.music_artist }</span> <em class="bar">|</em> <a
										href="javascript:melon.link.goAlbumDetail('10070846');"
										title="남이 될 수 있을까 - 페이지 이동" class="fc_mgray">${vo.album_name }</a>
								</div>

							</div>
						</div></td>
					<td class="t_left"><div class="wrap right_none"></div></td>
					<td><div class="wrap pd_none">
							<button type="button" class="btn_icon dl"
								title="남이 될 수 있을까 다운로드 - 새창"
								onClick="melon.buy.goBuyProduct('frm', '30468654', '3C0001', '','0', '');">
								<span class="odd_span">다운로드</span>
							</button>
						</div></td>
				</tr>
				<%i++; %>
			</c:forEach>
		</tbody>
	</table> --%>
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
					<td><input type="checkbox" value="${vo.music_id }"
						name="checkbox_name"></td>
					<td><span><%=i%></span><span>위</span></td>
					<td><img
						src="http://211.238.142.109:8080/food/main/album_img/${vo.album_art }.jpg"
						width=50 height=50> <input type="button" value="재생">
						<input type="button" value="담기"></td>
					<td>${vo.music_name }</td>
					<td>${vo.music_artist }</td>
					<td>${vo.album_name }</td>
				</tr>
				<%
					i++;
				%>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>

