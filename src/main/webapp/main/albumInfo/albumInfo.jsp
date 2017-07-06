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
	<h2>�ٹ� ����</h2>
	<div>
		<div>
			<h3>�ٹ� �⺻����</h3>
			<div>
				<span><img
						 width="216"
						height="216"
						src="http://cdnimg.melon.co.kr/cm/album/images/100/76/542/10076542_500.jpg/melon/resize/216/quality/80/optimize"
						alt="�Բ�. ��. ��ٸ��� �ٴ� �ٹ��̹���" /></span>
			</div>
			<!-- //class="wrap_thumb" -->
			<div class="wrap_album_info">
				<p class="albumname">
					<strong class="none">�ٹ���</strong> <span class="gubun">[${ vo.album_type}]</span>${vo.album_name }
				</p>
				<dl>
					<dt>��Ƽ��Ʈ</dt>
					<dd>
						<span>${vo.album_artist }</span>
					</dd>
					<dt>�߸���</dt>
					<dd>
					<fmt:formatDate value="${vo.album_release }" 
            						pattern="yyyy.MM.dd" />
					</dd>
					<dt>�߸Ż�</dt>
					<dd>${vo.album_agency }</dd>
					<dt>��ȹ��</dt>
					<dd>${vo.album_dist }</dd>
					<dt>�帣</dt>
					<dd>${vo.genre_name }</dd>
				</dl>


		</div>

		<!-- ���� �ȳ� ���� -->

		<!-- //���� �ȳ� ���� -->
	</div>
</div>	

</body>
</html>