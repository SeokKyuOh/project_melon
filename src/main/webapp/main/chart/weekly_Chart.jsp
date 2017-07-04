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
<script type="text/javascript">
	/*
	 *   jquery : javascript라이브러리 (DOMSCRIPT)
	 =======
	 DOM => 태그를 제어하는 프로그램 
	 1)selector 
	 */
</script>
<body>

<%-- 					<table border="2" style="width: 1008px" >
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
								<th scope="col" class="t_left"><div class="wrap right_none">좋아요</div></th>
								<th scope="col"><div class="wrap pd_none">다운</div></th>
							</tr>
						</thead>
							<c:forEach var="vo" begin="1" end="10">
						<tbody id="chartListObj">

								<tr class="lst50" id="lst50">

									<td><div class="wrap pd_none left">
											<input type="checkbox" title="남이 될 수 있을까 곡 선택"
												class="input_check" name="input_check" value="30468654" />
										</div></td>
										
									<td class="t_left"><div class="wrap right_none">
											<span class="rank top">1</span> <span class="none">위</span> 
										</div></td>
										
									<td><div class="wrap">
											<a href="javascript:melon.link.goAlbumDetail('10070846');"
												class="image_type15" title="남이 될 수 있을까 - 페이지 이동"> <img
												onerror="WEBPOCIMG.defaultAlbumImg(this);" width="48"
												height="48"
												src="http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/48/quality/80/optimize"
												alt="남이 될 수 있을까 - 페이지 이동" /> <span class="bg_album_frame"
												onclick="javascript:melon.link.goAlbumDetail('10070846');"></span>
											</a>
										</div></td>
									<td class="t_left"><div class="wrap">
											<button type="button" class="btn_icon play"
												title="남이 될 수 있을까 재생 - 새창"
												onclick="melon.play.playSong('19030101',30468654);"
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
															title="남이 될 수 있을까 재생 - 새창">남이 될 수 있을까</a></strong>
													</span>
												</div>
												<br />
												<div>
													<div class="ellipsis rank02">
															<span>볼빨간사춘기</span>
															<span>스무살</span>
													</div>
												</div>
											</div>
										</div>
										</td>
									<td class="t_left"><div class="wrap right_none">
											<button type="button" class="btn_icon like"
												title="남이 될 수 있을까 좋아요" data-song-no="30468654"
												data-song-menuId="19030101">
												<span class="odd_span">좋아요</span> <span class="cnt"><span
													class="none">총건수</span>0</span>
											</button>
										</div></td>
									<td><div class="wrap pd_none">
											<button type="button" class="btn_icon dl"
												title="남이 될 수 있을까 다운로드 - 새창"
												onClick="melon.buy.goBuyProduct('frm', '30468654', '3C0001', '','0', '');">
												<span class="odd_span">다운로드</span>
											</button>
										</div></td>
								</tr>
							</c:forEach>
						</tbody>
					</table> --%>
	<input type=button class="btn btn-theme" value="선택담기">
           
           <table class="table table-hover">
             <thead>
               <tr>
                 <th width=20%><input type="checkbox" value=""></th>
                 <th width=20%>albumimg</th>
                 <th width=40%>name</th>
                 <th width=20%>artist</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                   <td><input type="checkbox" value=""></td>
                 <td><img src="http://cmsimg.mnet.com/clipimage/album/240/002/058/2058037.jpg" width=50 height=50></td>
                 <td>Doe</td>
                 <td>john@example.com</td>
               </tr>
               <tr>
                   <td><input type="checkbox" value=""></td>
                 <td>Mary</td>
                 <td>Moe</td>
                 <td>mary@example.com</td>
               </tr>
               <tr>
                   <td valign=center><input type="checkbox" value=""></td>
                 <td>July</td>
                 <td>Dooley</td>
                 <td>july@example.com</td>
               </tr>
             </tbody>
           </table>
					



</body>
</html>


