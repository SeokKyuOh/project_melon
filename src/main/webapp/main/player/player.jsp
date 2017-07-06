<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.playlist.dao.PlaylistMusicVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/resources/js/soundmanager2.js"/>"></script>
<script src="<c:url value="/resources/js/bar-ui.js"/>"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/bar-ui.css"/>" />
<script>
	
	var albumURL="http://211.238.142.109:8080/album_img/";
	var musicURL="http://211.238.142.109:8080/music/";
	
	var isImageClicked=0;		// �ٹ���Ʈ Ŭ�� ���� Ȯ��
	
	$(function(){
		// �̿�� ���� Ȯ��
		
		$('#lyrics').hide();
		
		var album_art=[];
		var music_lyrics=[];
		
		// �ٹ� ��Ʈ�� Ŭ���ϸ� ���� ����ǰ� �ִ� ���� ���� �ҷ�����
		$('#album').click(function(){
			if(isImageClicked==0){
				//alert(isImageClicked);
				isImageClicked++;
				$('#image').fadeTo(1000, 0.4);
				$('#lyrics').show();
			}
			// �ٽ� Ŭ���ϸ� ���� �̹������ ���
			else{
				//alert(isImageClicked);
				isImageClicked--;
				$('#image').fadeTo(1000, 1);
				// �̹����� ����(opacity)�� ���߰� ���� ���
				$('#lyrics').hide();
				
				// ���� ����ǰ� �ִ� ������ check -> <li> Ŭ�� �� index�� ����
			}
		});
		/* 
		$('.sm2-playlist-bd').find('li').each(function(){
			
		});
		 */
		 
		// ���� ����ǰ� �ִ� ������ check -> <li> Ŭ�� �� index�� ����
		// �� ���� Ŭ���ϸ� � �ش��ϴ� �ٹ���Ʈ�� ���� ��������
		$(".mclick").click(function(){
			var index=$(this).attr("index");
			var album_art=$(this).attr("album_art");
			var music_lyrics=$(this).attr("music_lyrics");
			//alert(index);
			//$("li:eq("+index+")")
			//var url=$("#image").attr("src");
			//alert(url);
			// �ٹ���Ʈ �ٲٱ�(���� Ŭ���� ���� album_art url �ֱ�)
			var album_replace="../main/player/cover/album.jpg";
			$("#image").attr("src", album_replace);
			$("#image").attr("src", albumURL+album_art+".jpg");
			//$("#image").attr("src", "../main/player/cover/album"+index+".jpg");
			// ���� �ٲٱ�
			var lyrics=lyrics;
			alert(album_replace);
			alert("album_art : "+album_art+", music_lyrics : "+music_lyrics);
			
			// ��� Ƚ�� �ø���
			// + ��� Ƚ�� �ø���(���...???)
			// ��� Ƚ�� �ø��� ���
			/*
			1) �ٸ� �������� ���� �ѱ�� ��û -> �ѱ� ���������� ��� Ƚ���� ������Ű��(â�� ��������� ����)
			*/
			var playlist_music_id=$(this).attr("playlist_music_id");
			
			$.ajax({
				type:"GET",
				url:"player_count.do?playlist_music_id="+playlist_music_id,
				dataType:"text",
				error:function(request, status, error){
					alert('��� ����');
					alert("code : "+request.status+"\n"+"message : "+request.responseText+"\n"+"error : "+error);
				},
				success:function(){
					alert("����");
				}
			});
		});
		/* 	
		// ���� ��ư Ŭ�� �� 
		$('.btclick').click({
			var playlist_music_id=$(this).attr('playlist_music_id');
			alert(playlist_music_id);
			$.ajax({
				type:"GET",
				url:"player_delete.do?playlist_music_id="+playlist_music_id,
				dataType:"text",
				error:function(){
					alert('��� ����');
				},
				success:function(){
					alert("����");
					$('.mclick').remove();
				}
			})
		});
		 */
	});
	
</script>
</head>
<body>

	<!-- �ٹ���Ʈ �� ���� ���� -->
	<!-- ���õ� ���� �������� ��� ���� ���� �ִ� ���� �ٹ���Ʈ, �� �ϳ��� Ŭ���� �߰��Ǿ��� ��� �ش� ���� �ٹ���Ʈ -->
	<div id="album" style="position:relative; width:450px; height:400">
		<c:set var="album_art" value="${playlist[0].album_art }"/>
		<c:set var="lyric" value="${playlist[0].music_lyrics }"/>
		<img id="image" src="http://211.238.142.109:8080/album_img/${album_art}.jpg" width=450 height=400> 
		<!-- <img src="../main/player/cover/album1.jpg" id="image" width=450 height=400> -->
		<div id="lyrics" style="position:absolute; color:white; text-align:center; top:20%; left:45%">
			<p>
				${lyric }
			</p>
		</div>
	</div>
<!-- 	
	<div id="lyrics" style="overflow-y:scroll; overflow-x:hidden; background-color:blue; width:450px; height:400" >
		111111111111111111111<br>
		111111111111111111111<br>
		111111111111111111111<br>
	</div>
-->
	<div class="sm2-bar-ui playlist-open">
		<div class="bd sm2-main-controls">
			<div class="sm2-inline-texture"></div>
			<div class="sm2-inline-gradient"></div>
			<div class="sm2-inline-element sm2-button-element">
				<div class="sm2-button-bd">
					<a href="#play" class="sm2-inline-button sm2-icon-play-pause">Play
						/ pause</a>
				</div>
			</div>
			<div class="sm2-inline-element sm2-inline-status">
			
				<div class="sm2-playlist">
					<div class="sm2-playlist-target">
						playlist <ul> + <li> markup will be injected here
						if you want default / non-JS content, you can put that here.
						<noscript>
							<p>JavaScript is required.</p>
						</noscript>
					</div>
				</div>
				<!-- ���¹�(����� �÷��̾� �������� �߸鼭 ��� ��ư�� ������ ��� ����! 
				���� Ŭ���ؼ� �÷��̾�� ������ ��  -->
				<div class="sm2-progress">
					<div class="sm2-row">
						<div class="sm2-inline-time">0:00</div>
						<div class="sm2-progress-bd">
							<div class="sm2-progress-track">
								<div class="sm2-progress-bar"></div>
								<div class="sm2-progress-ball">
									<div class="icon-overlay"></div>
								</div>
							</div>
						</div>
						<div class="sm2-inline-duration">0:00</div>
					</div>
				</div>
			</div>
			<div class="sm2-inline-element sm2-button-element sm2-volume">
				<div class="sm2-button-bd">
					<span class="sm2-inline-button sm2-volume-control volume-shade"></span>
					<a href="#volume" class="sm2-inline-button sm2-volume-control">volume</a>
				</div>
			</div>
			<div class="sm2-inline-element sm2-button-element">
				<div class="sm2-button-bd">
					<a href="#prev" title="Previous"
						class="sm2-inline-button sm2-icon-previous">&lt; previous</a>
				</div>
			</div>
			<div class="sm2-inline-element sm2-button-element">
				<div class="sm2-button-bd">
					<a href="#next" title="Next"
						class="sm2-inline-button sm2-icon-next">&gt; next</a>
				</div>
			</div>
			<div class="sm2-inline-element sm2-button-element sm2-menu">
				<div class="sm2-button-bd">
					<a href="#menu" class="sm2-inline-button sm2-icon-menu">menu</a>
				</div>
			</div>
		</div>

		<div class="bd sm2-playlist-drawer sm2-element">
			<div class="sm2-inline-texture">
				<div class="sm2-box-shadow"></div>
			</div>
			<!-- �� ����Ʈ ���� -->
			<div class="sm2-playlist-wrapper">

				<ul class="sm2-playlist-bd">
					<!-- �� �ٿ�ε� ��ũ �ִ� ����Ʈ ���� -->
					<!-- 
					<li>
						<div class="sm2-row">
							<div class="sm2-col sm2-wide">
								<a
									href="http://freshly-ground.com/data/audio/sm2/SonReal%20-%20LA%20%28Prod%20Chin%20Injetti%29.mp3"><b>SonReal</b>
									- LA</a>
							</div>
						</div>
					</li> 
					-->
					<!-- standard one-line items -->
					<!-- 211.238.142.109:8080/food/main/music/18360609.mp3 
					../song/01. Amazons of Themyscira.mp3
					-->
					<!--  
					<li><a href="http://211.238.142.109:8080/food/main/music/18360609.mp3">Amazons
							of Themyscira</a></li>
					<li><a href="song/02. History Lesson.mp3">History
							Lesson</a></li>
					<li><a href="song/02. History Lesson.mp3">Angel on
							the Wing</a>
					</li>
					 -->
					 
					<c:forEach var="vo" items="${playlist}" varStatus="status">
						<%-- <li id="${vo.music_number }"> --%>
						<li class="mclick" album_art="${vo.album_art }" music_lyrics="${vo.music_lyrics}" playlist_music_id="${vo.playlist_music_id }" index="${status.index }">
							<a href="http://211.238.142.109:8080/music/${vo.music_number }.mp3">
								${vo.music_name } - ${vo.music_artist }
							</a>
						</li>
						<%-- <input type="button" value="edit" class="btclick" playlist_music_id="${vo.playlist_music_id }"> --%>
					</c:forEach>
					
				</ul>
			</div>
			<div class="sm2-extra-controls">
				<div class="bd">
					<div class="sm2-inline-element sm2-button-element">
						<a href="#prev" title="Previous"
							class="sm2-inline-button sm2-icon-previous">&lt; previous</a>
					</div>
					<div class="sm2-inline-element sm2-button-element">
						<a href="#next" title="Next"
							class="sm2-inline-button sm2-icon-next">&gt; next</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>