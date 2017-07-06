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
<!-- ��� css ���� ���� ���� -->
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
	<h2>�ֽžٹ�</h2>



	<div>

		<ul>
			<c:forEach var="vo" items="${list }">
			<li>
				<div style="float: left; width: 20%; padding: 10px;">
					<img
						width="130"
						height="130"
						src="http://211.238.142.109:8080/food/main/album_img/${vo.album_art }.jpg"/>
					<div>
						<dl>
							<dt>
								<span>[${vo.album_type }]</span> <strong>�ٹ���</strong>
								${vo.album_name }
							</dt>
							<dd>
								<strong>��Ƽ��Ʈ��</strong>
								<div>
										<span>${vo.album_artist }</span>
								</div>
							</dd>
							<dd>
							<strong>Ÿ��Ʋ��</strong>
							<span>${vo.music_name }</span>
							</dd>
							<dd>
								<strong>�ٹ� �߸���</strong> 
								<span>
								<fmt:formatDate value="${vo.album_release }" 
            						pattern="yyyy.MM.dd" /></span>
								<em class="bar">|</em> <span>${vo.count }��</span>
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