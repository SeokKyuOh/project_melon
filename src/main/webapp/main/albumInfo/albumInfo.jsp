<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<h2>앨범 정보</h2>
	<div>
		<div>
			<h3>앨범 기본정보</h3>
			<div>
				<span><img
						 width="216"
						height="216"
						src="http://cdnimg.melon.co.kr/cm/album/images/100/76/542/10076542_500.jpg/melon/resize/216/quality/80/optimize"
						alt="함께. 셋. 기다림의 바다 앨범이미지" /></span>
			</div>
			<!-- //class="wrap_thumb" -->
			<div class="wrap_album_info">
				<p class="albumname">
					<strong class="none">앨범명</strong> <span class="gubun">[${ vo.album_type}]</span>${vo.album_name }
				</p>
				<dl>
					<dt>아티스트</dt>
					<dd>
						<span>${vo.album_artist }</span>
					</dd>
					<dt>발매일</dt>
					<dd>
					<fmt:formatDate value="${vo.album_release }" 
            						pattern="yyyy.MM.dd" />
					</dd>
					<dt>발매사</dt>
					<dd>${vo.album_agency }</dd>
					<dt>기획사</dt>
					<dd>${vo.album_dist }</dd>
					<dt>장르</dt>
					<dd>${vo.genre_name }</dd>
				</dl>


		</div>

		<!-- 구매 안내 문구 -->

		<!-- //구매 안내 문구 -->
	</div>
</div>	

</body>
</html>