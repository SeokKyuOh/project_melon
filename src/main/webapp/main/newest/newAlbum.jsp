<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="http://cdnimg.melon.co.kr/static/web/resource/style/w1/xk/q/1o7f6grizjx.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://cdnimg.melon.co.kr/static/web/resource/style/w1/lu/h/una7b19ci5.css"
	type="text/css" />
<!-- 댓글 css 파일 네임 변경 -->
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
<script type="text/javascript"></script>
<body>
	<h2 class="title2">최신앨범</h2>
	<div class="wrap_tab03 type02">
		<ul>
			<li class="first_child on"><a href="javascript:;"
				class="link_tab e_link_tab" data-area-flg="I"> <span
					class="cntt">국내</span>
			</a></li>
			<li class="last_child "><a href="javascript:;"
				class="link_tab e_link_tab" data-area-flg="O"> <span
					class="cntt">해외</span>
			</a></li>
		</ul>
	</div>


	<div class="list_album15 d_album_list">

		<ul class="album15_ul">
			<c:forEach var="vo" items="${list }">
			<li class="album15_li ">
				<div class="wrap_album04">
					<a href="javascript:melon.link.goAlbumDetail('10073513');"
						title="LISTEN 010 좋니 - 페이지 이동" class="thumb"> <span
						class="thumb_frame"></span> <img
						onerror="WEBPOCIMG.defaultAlbumImg(this);" width="130"
						height="130"
						src="http://211.238.142.109:8080/food/main/album_img/${vo.album_art }.jpg" 
						alt="" />
					</a> <a href="javascript:melon.play.playAlbum('18020123','10073513');"
						class="bg_play medium">재생</a>
					<div class="atist_info">
						<dl>
							<dt>
								<span class="vdo_name">[${vo.album_type }]</span> <strong class="none">앨범명</strong>
								<a href="javascript:melon.link.goAlbumDetail('10073513');"
									class="ellipsis" title="LISTEN 010 좋니 - 페이지 이동">${vo.album_name }</a>
							</dt>
							<dd class="atistname">
								<strong class="none">아티스트명</strong>
								<div class="ellipsis">
									<a href="javascript:melon.link.goArtistDetail('437');"
										title="윤종신 - 페이지 이동" class="play_artist"><span>${vo.album_artist }</span></a><span
										class="checkEllipsis" style="display: none"><a
										href="javascript:melon.link.goArtistDetail('437');"
										title="윤종신 - 페이지 이동" class="play_artist"><span>${vo.album_artist }</span></a></span>
								</div>
								<!-- 아티스트명 공간 초과시 더보기 버튼 노출 -->

								<!-- //아티스트명 공간 초과시 더보기 버튼 노출 -->
							</dd>
							<dd class="btn_play">
								<a href="#" title="좋니 재생 - 새 창"
									onclick="melon.play.playSong('18020123',30486509);"
									class="btn_play_song "> <span class="icon_play">곡재생</span>



									<span class="songname12">${vo.music_name }</span>
								</a>
							</dd>
							<dd class="wrap_btn">
								<strong class="none">앨범 발매일</strong> <span class="cnt_view">
								<fmt:formatDate value="${vo.album_release }" 
            						pattern="yyyy.MM.dd" /></span>
								<em class="bar">|</em> <span class="tot_song">${vo.count }곡</span> <em
									class="bar">|</em> <a href="#" title="LISTEN 010 좋니 좋아요 "
									class="btn_like d_btn" data-album-no="10073513"
									data-album-menuId="18020123">
									<!-- class="on" 추가시 활성 --> <span class="icon">좋아요</span> <strong
									class="none">총건수</strong>0
								</a>
							</dd>
							<dd class="wrap_func">
								<!-- or not album.sellAlbum / album.sellAlbum and  -->
								<button type="button" title="LISTEN 010 좋니 재생 - 새 창"
									class="btn_small play"
									onClick="melon.play.playAlbum('18020123','10073513');">
									<span class="odd_span"><span class="even_span">앨범듣기</span></span>
								</button>
								<button type="button" title="LISTEN 010 좋니 다운 - 새 창"
									class="btn_small download"
									onClick="melon.buy.goBuyProduct('frm','10073513','3B0001','','0','18020123','1');">
									<span class="odd_span"><span class="even_span">앨범다운</span></span>
								</button>
							</dd>
						</dl>
					</div>

				</div>
				<!-- //class="wrap_album04" -->
			</li>
			</c:forEach>
		</ul>
	</div>


</body>
</html>