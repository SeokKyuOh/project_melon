<!-- 공지사항 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지</title>
</head>
<body>
	<section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="left_content">
          <div class="contact_area">
            <h2>내용</h2>
            <p>공지 내용구성</p>
            <form method=post action="notice_insert.do" class="contact_form">
              <input class="form-control" type="text" placeholder="Name*">
              <input class="form-control" type="email" placeholder="Email*">
              <textarea class="form-control" cols="30" rows="10" placeholder="Message*"></textarea>
          				<input type=submit value="등록하기" class="btn btn-theme">
						
						<input type="submit" value="취소하기" class="btn btn-theme" onClick="javascript:history.back()">
          
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>