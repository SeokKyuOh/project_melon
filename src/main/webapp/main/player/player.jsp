<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="../assets/js/soundmanager2.js"></script>
<script src="../assets/js/bar-ui.js"></script>
<link rel="stylesheet" href="bar-ui.css" />
<script>
	 
	var albumURL="http://211.238.142.109:8080/food/main/album_img/";
	var songURL="http://211.238.142.109:8080/food/main/music/";
	

</script>
</head>
<body>
	<!-- 앨범아트 및 가사 구현 -->
	<div>
		<img src="../player/cover/album.jpg" width=450 height=400>
	</div>
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
				<!-- 상태바(현재는 플레이어 페이지가 뜨면서 재생 버튼을 눌러야 재생 시작! 
				곡을 클릭해서 플레이어로 들어왔을 때  -->
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
			<!-- 곡 리스트 구현 -->
			<div class="sm2-playlist-wrapper">

				<ul class="sm2-playlist-bd">
					<!-- 곡 다운로드 링크 있는 리스트 구현 -->
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
					<li><a href="211.238.142.109:8080/food/main/music/18360609.mp3">Amazons
							of Themyscira</a></li>
					<li><a href="..player/song/02. History Lesson.mp3">History
							Lesson</a></li>
					<li><a href="/song/03. Angel on the Wing.mp3">Angel on
							the Wing</a>
					</li>
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