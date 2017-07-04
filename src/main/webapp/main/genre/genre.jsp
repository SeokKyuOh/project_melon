<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?2"
	id="favicon" />
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
	href="/resource/style/web/genre/melonweb_genre.css" type="text/css" />
<script type="text/javascript"
	src="/resource/script/web/common/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="//member.melon.com/resource/script/web/member/melonweb_member_external.js?tm=20170424"></script>
<script type="text/javascript"
	src="http://cdnimg.melon.co.kr/static/web/resource/script/w1/g8/u/kv5d3h4q8t.js"></script>
<style>
#menu {
     margin: 0;
     width: auto;
     background-color: #565656;
     font-size: 16px;
     font-family: Tahoma, Geneva, sans-serif;
     font-weight: bold;
     text-align: left;
     padding: 8px;
     border-radius: 8px;
     -webkit-border-radius: 8px;
     -moz-border-radius: 8px;
     -o-border-radius: 8px;
}

#menu ul {
     margin: 0;
     padding: 8px 0;
     list-style: none;
     height: auto;
}

#menu li {
     display: inline;
     padding: 8px;
}

#menu a {
     color: #FFF;
     padding: 10px;
     text-decoration: none;
}

#menu a:hover {
     background-color: #1B191B;
     color: #FFF;
     border-radius: 20px;
     -webkit-border-radius: 20px;
     -moz-border-radius: 20px;
     -o-border-radius: 20px;
}

#menu li .active {
     background-color: #1B191B;
     color: #FFF;
     border-radius: 20px;
     -webkit-border-radius: 20px;
     -moz-border-radius: 20px;
     -o-border-radius: 20px;
}	
</style>
<body>
	<div id="menu">
		<ul>
			<li><a href="#" class="active">힙합</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Products</a></li>
			<li><a href="#">Blog</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
	<h3 class="s_title01 mt25">최신앨범</h3>
	<div class="recm_album pb47">



		<!-- 앨범4 -->
		<ul class="list_album12 d_album_list">

			<li class="first_child album12_li">
				<div class="wrap_album05">
					<a href="javascript:melon.link.goAlbumDetail('10073791');"
						title="Purple - 페이지 이동" class="thumb"> <span
						class="thumb_frame"></span>
					<!-- 이미지 상단 반투명 Border --> <img
						onerror="WEBPOCIMG.defaultAlbumImg(this);" width="170"
						height="170"
						src="http://cdnimg.melon.co.kr/cm/album/images/100/73/791/10073791_500.jpg/melon/resize/170/quality/80/optimize"
						alt="" />
					</a> <a href="javascript:melon.play.playAlbum('25250101','10073791');"
						class="bg_play big">재생</a>
					<dl>
						<dt>
							<strong class="none">앨범명</strong> <span class="ellipsis">
								<a href="javascript:melon.link.goAlbumDetail('10073791');"
								title="Purple">Purple</a>
							</span>
						</dt>
						<dd class="atistname">
							<strong class="none">아티스트명</strong>
							<div class="ellipsis">
								<a href="javascript:melon.link.goArtistDetail('750053');"
									title="마마무 - 페이지 이동" class="play_artist"><span>마마무</span></a><span
									class="checkEllipsis" style="display: none"><a
									href="javascript:melon.link.goArtistDetail('750053');"
									title="마마무 - 페이지 이동" class="play_artist"><span>마마무</span></a></span>
							</div>

						</dd>
						<dd class="cnt_click">
							<a href="#" title="좋아요" class="btn_like d_btn"
								data-album-no="10073791" data-album-menuId="25250101">
								<!-- class="on" 추가시 활성 --> <span class="icon">좋아요</span> <strong
								class="none">총건수</strong>0
							</a>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
	</div>
	<div class="wrap_tab05 page_move mt12" width=100%>
		<ul class="tab_ul05" width=100%>
			<li class="tab_li05 first_child on"><a
				href="javascript:melon.link.goGenre4Song('GN0400', '');" title="최신곡"
				class="link_tab05">음원</a></li>
			<li class="tab_li05 "><a
				href="javascript:melon.link.goGenre4Album('GN0400', '');"
				title="최신앨범" class="link_tab05">앨범</a></li>
		</ul>
	</div>
	<table border="1" style="width: 100%">
		<colgroup>
			<col style="width: 29px" />
			<col style="width: 48px" />
			<col />
			<col style="width: 152px" />
			<col style="width: 146px" />
			<col style="width: 80px" />
			<col style="width: 43px" />
			<col style="width: 27px" />
			<col style="width: 45px" />
		</colgroup>
		<thead>

			<tr>
				<th scope="col"><div class="wrap pd_none left">
						<input type="checkbox" title="곡 목록 전체 선택"
							class="input_check d_checkall" />
					</div></th>
				<th scope="col"><div class="wrap">NO</div></th>
				<th scope="col"><div class="wrap">곡명</div></th>
				<th scope="col" class="t_left"><div class="wrap">아티스트</div></th>
				<th scope="col" class="t_left"><div class="wrap">앨범</div></th>
				<th scope="col" class="t_left"><div class="wrap right_none">좋아요</div></th>
				<th scope="col"><div class="wrap pd_none">다운</div></th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="vo" items="${list }">
				<tr>
					<td><div class="wrap pd_none left">
							<input type="checkbox" title="사랑일까 사랑이 아닐까 곡 선택"
								class="input_check" name="input_check" value="30487099" />
						</div></td>
					<td class="no"><div class="wrap">1</div></td>
					<td class="t_left"><div class="wrap pd_none">
							<div class="ellipsis" style="max-width: 100%">
								<button type="button" class="btn_icon play"
									title="사랑일까 사랑이 아닐까 재생 - 새 창"
									onClick="melon.play.playSong('25220101',30487099);">
									<span class="odd_span">재생</span>
								</button>
								<button type="button" class="btn_icon add"
									title="사랑일까 사랑이 아닐까 곡담기 - 새 창"
									onClick="melon.play.addPlayList('30487099');">
									<span class="odd_span">담기</span>
								</button>
								<a href="javascript:melon.link.goSongDetail('30487099');"
									title="사랑일까 사랑이 아닐까 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span
									class="odd_span">사랑일까 사랑이 아닐까</span></a> <a
									href="javascript:melon.play.playSong('25220101',30487099);"
									class="fc_gray" title="사랑일까 사랑이 아닐까 재생 - 새 창">${vo.music_name }</a>
							</div>
						</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
							<div id="artistName" class="ellipsis" style="max-width: 122px">
								<a href="javascript:melon.link.goArtistDetail('455161');"
									title="리디아 (Lydia) - 페이지 이동" class="fc_mgray">${vo.music_artist }</a><span
									class="checkEllipsis" style="display: none"><a
									href="javascript:melon.link.goArtistDetail('455161');"
									title="리디아 (Lydia) - 페이지 이동" class="fc_mgray">리디아 (Lydia)</a></span>
							</div>

						</div></td>
					<td class="t_left"><div class="wrap">
							<div class="ellipsis" style="max-width: 70%">
								<a href="javascript:melon.link.goAlbumDetail('10073565');"
									title="사랑일까 사랑이 아닐까 - 페이지 이동" class="fc_mgray">${vo.album_name }</a>
							</div>
						</div></td>


					<td><div class="wrap pd_none">
							<button type="button" class="btn_icon dl"
								title="사랑일까 사랑이 아닐까 다운로드 - 새 창"
								onClick="melon.buy.goBuyProduct('frm', '30487099', '3C0001', '','0', '25220101');">
								<span class="odd_span">다운</span>
							</button>
						</div></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>