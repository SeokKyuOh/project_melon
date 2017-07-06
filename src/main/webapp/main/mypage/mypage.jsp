<!-- 마이뮤직 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<section id="contentSection">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-8" height=500>
			<div class="left_content">
				<div class="single_page">
					<ol class="breadcrumb">
						<li><a href="../index.html">Home</a></li>
						<li><a href="#">마이뮤직</a></li>
						<!-- <li class="active">내정보?</li> -->
					</ol>
					<div class="panel panel-default">
					  <div class="panel-body" >
					  <div class="col-sm-6 col-md-4" >
                       <!--  <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" /> -->
                    </div>


					    <h4>${vo.member_nick }</h4>
					    <small style="display: block; line-height:1.428571429; color: #999;">
					    	<cite title="San Francisco, USA">${vo.member_addr } 
					    		<i class="glyphicon glyphicon-map-marker"></i>
					    	</cite></small><br>
                        <p>
                        	<i class="glyphicon glyphicon-user"></i>&nbsp;${vo.member_name }
                            <br /><br>
                            <i class="glyphicon glyphicon-envelope"></i>&nbsp;${vo.member_email }
                            <br /><br>
                            <i class="glyphicon glyphicon-gift"></i>&nbsp;<fmt:formatDate value="${vo.member_birthdate }" pattern="yyyy-MM-dd"/></p><br>
                            <a href="info_update.do?nick=${vo.member_nick }" ><input type=button value="내 정보 수정" class="btn btn-theme"></a>
					  </div>
					</div>
					<div class="panel panel-default">
					  <div class="panel-body" >
					    <h3>내 구매 정보</h3>
                        <p><br><br>
                                <!--보유중인 이용권이 없습니다  -->
                                <table class="table table-hover" valign=center>
									<thead>
										<tr>
											<th>구매한 이용권</th>
											<th>시작일</th>
											<th>종료일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bsvo" items="${bsvo }">
											<tr>
												<td style="width: 60px">${bsvo.streaming_name }</td>
												<td style="width: 30px">${bsvo.buy_streaming_start }</td>
												<td style="width: 30px">${bsvo.buy_streaming_end }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
                        	<br />
                        </p><br>
					  </div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar" style="OVERFLOW:auto; width:100%; height:330px;">
            <h2><span>나의 플레이리스트</span></h2>
            <table class="table table-hover" valign=center>
			    <thead>
			      <tr>
			        <th>곡명</th>
			        <th>아티스트</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="i" begin="0" end="10">
				      <tr>
				        <td style="width:30%">악뮤</td>
				        <td style="width:60%">Doedfdfdfdfdfdfdf</td>
				        <td style="width:10%"><a href=""><i class="glyphicon glyphicon-remove"></i></a></td>
				      </tr>
			      </c:forEach>
			    </tbody>
			  </table>
          </div>
        </aside>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar" style="OVERFLOW:auto; width:100%; height:200px;">
            <h2><span>내 문의 내역</span></h2>
            <table class="table table-hover">
			   <thead>
			   	  
	                <tr>
				        <th style="width:70%">내 문의글</th>
				        <th style="width:30%">작성일</th>
				      </tr>
			     
			    </thead>
			    <tbody>
				    <c:forEach var="q" items="${qvo }">
				      <tr>
				        <td>${q.question_title }</td>
				        <td><fmt:formatDate value="${q.question_regdate }" pattern="yyyy-MM-dd"/></td>
				      </tr>
				    </c:forEach>
			    </tbody>
			  </table>
			  <input type=button value="내 상세 문의 내역 보기" class="btn btn-theme">
          </div>
        </aside>
      </div>
	</div>
	</section>
</body>
</html>