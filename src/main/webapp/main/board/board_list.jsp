<!-- 이용권구매 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이용권구매</title>
<link rel="stylesheet" type="text/css" href="style/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script><!-- 라이브러리 로드 -->
<script type="text/javascript">



$(document).ready(function(){

	$(".accordion h3:first").addClass("active");
	$(".accordion p:not(:first)").hide();


	$(".accordion h3").click(function(){
	
	  $(this).next("p").slideToggle("slow")
	  .siblings("p:visible").slideUp("slow");
	  $(this).toggleClass("active");
	  $(this).siblings("h3").removeClass("active");
	
	});

});


</script>

</head>
<body>
	<section id="contentSection">

	<table class="table table-hover">
		<thead>
			<tr>
				<th width=15%>번호</th>
				<th width=15%>작성자</th>
				<th width=30%>제목</th>
				<th width=20%>등록일</th>
				<th width=20%>조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>작성자</td>
				<td></td>
				<td>john@example.com</td>
				<td>1</td>
			</tr>

		</tbody>
	</table>
	</section>

</body>
</html>