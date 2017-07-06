<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="sliderSection">
  <!-- 최신 앨범 이미지 보이는 곳 -->
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="slick_slider"> <!-- 이동 버튼 -->
          <div class="single_iteam"> <a href="pages/single_page.html"> <img src="images/slider_img4.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="pages/single_page.html">최신 앨범 이미지 구현할 예정</a></h2>
              <p>자세한 설명 추가할 수 있음</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="pages/single_page.html"> <img src="images/slider_img2.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="pages/single_page.html">최신 앨범 이미지 구현할 예정</a></h2>
              <p>자세한 설명 추가할 수 있음</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="pages/single_page.html"> <img src="images/slider_img3.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="pages/single_page.html">최신 앨범 이미지 구현할 예정</a></h2>
              <p>자세한 설명 추가할 수 있음</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="pages/single_page.html"> <img src="images/slider_img1.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="pages/single_page.html">최신 앨범 이미지 구현할 예정</a></h2>
              <p>자세한 설명 추가할 수 있음</p>
            </div>
          </div>
        </div>
      </div>
      <!-- 최신앨범 이미지 끝 -->
      
      <!-- 앨범 차트 구현 예정 자리 시작 -->
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="latest_post">
          <h2><span>실시간 앨범 차트</span></h2>
          <div class="latest_post_container">
            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
            <ul class="latest_postnav">
            <% int i=1; %>
              <c:forEach var="daily_list" items="${daily_list}" begin="0" end="4" step="1">
              <li>
                <div class="media"> <a href="daily_chart.do" class="media-left"> <img src="http://211.238.142.109:8080/food/main/album_img/${daily_list.album_art }.jpg"> </a>
                  <div class="media-body"> <a href="daily_chart.do" ><%=i %>위 - ${daily_list. music_name} - ${daily_list.music_artist }</a> </div>
                </div>
              </li>
              <% i++; %>
              </c:forEach>
               <li></li>
            </ul>
            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
          </div>
        </div>
      </div>
      <!-- 앨범차트 구현 끝 -->
    </div>
  </section>
  <!-- 상단 2개 이미지 구현 끝 -->
  
  <!-- 다음 이미지 구현 구간 시작 -->
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="left_content">
          <div class="single_post_content">
            <h2><span>뮤직비디오</span></h2>
            <div class="single_post_content_left">
              <ul class="business_catgnav  wow fadeInDown">
                <li>
                  <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="images/featured_img1.jpg"> <span class="overlay"></span> </a>
                    <figcaption> <a href="pages/single_page.html">뮤직비디오 1</a> </figcaption>
                    <p>뮤직비디오1 설명</p>
                  </figure>
                </li>
              </ul>
            </div>
            <div class="single_post_content_right">
              <ul class="spost_nav">
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> 뮤직비디오2</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> 뮤직비디오3</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> 뮤직비디오4</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> 뮤직비디오5</a> </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- 다음 이미지 구현 구간 끝 -->
      <!-- 우측 이미지2 구현 시작 -->
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar">
            <h2><span>해시태그</span></h2>
            <ul class="spost_nav">
              #여름 추천 #신나는 노래<br>
              #우울할때 #발라드 추천
            </ul>
          </div>
        </aside>
      </div>
    </div>
  </section>
</body>
</html>