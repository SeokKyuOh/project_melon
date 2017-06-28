<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Melon:음악이 필요한 순간</title>
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel="stylesheet" type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/join.css">
<link rel="stylesheet" type="text/css" href="assets/shadow/css/shadowbox.css">
<link rel="stylesheet" type="text/css" href="assets/css/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="assets/shadow/js/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
});
$(function(){
	$('#postBtn').click(function(){
		Shadowbox.open({
			content:"postfind.do",
			player:'iframe',
			title:'우편번호 검색',
			width:450,
			height:400
		});
	});
	$('#idcheckBtn').click(function(){
		Shadowbox.open({
			content:"idcheck.do",
			player:'iframe',
			title:'아이디 중복 체크',
			width:330,
			height:150
		});
	});
});
</script>
</head>
<body>

      <!-- <form method="post" action="join_ok.do" name="join_frm"> -->
      
        <h1>회원가입</h1>
        
        <fieldset>
          <label for="nick">아이디</label>
          <input type="text" id="nick" name="user_nick" required>
          <input type="button" value="ID 중복체크" id="idcheckBtn">
                    
          <label for="password">비밀번호</label>
          <input type="password" id="password" name="user_password" required>
          재입력
          <input type="password" id="password_check" name="user_password_check">
          <label for="password">비밀번호가 일치합니다/안합니다.</label>
                    
          <label for="mail">이메일</label>
          <input type="email" id="mail" name="user_email" required>
          
          <label for="name">이름</label>
          <input type="text" id="name" name="user_name" required>
          
          <label>성별</label>
          <input type="radio" id="genderM" value="genderM" name="gender" checked>남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" id="genderF" value="genderF" name="gender">여자
          
          <label for="phone">전화번호</label>
          <select id="phone1" name="user_phone1" required>
          	<option value="">010</option>
          	<option value="">011</option>
          	<option value="">016</option>
          	<option value="">017</option>
          	<option value="">019</option>
          </select>-
          <input type="phone" id="phone2" name="user_phone2" style="size:7">-
          <input type="phone" id="phone3" name="user_phone3">
          
          <label for="birth">생년월일</label>
          <input type=date name=birthday>
          
          <label for="post">우편번호</label>
          <input type="post" id="post1" name="user_post1" size=7>
          <input type="post" id="post2" name="user_post2" size=7>
          
          <label for="addr1">주소</label>
          <input type="text" id="addr1" name="user_addr1" placeholder="주소">
          
          <label for="addr2">상세주소</label>
          <input type="text" id="addr2" name="user_addr2" placeholder="주소">
        
        <!-- 
        <label for="job">Job Role:</label>
        <select id="job" name="user_job">
          <optgroup label="Web">
            <option value="frontend_developer">Front-End Developer</option>
            <option value="php_developor">PHP Developer</option>
            <option value="python_developer">Python Developer</option>
            <option value="rails_developer"> Rails Developer</option>
            <option value="web_designer">Web Designer</option>
            <option value="WordPress_developer">WordPress Developer</option>
          </optgroup>
          <optgroup label="Mobile">
            <option value="Android_developer">Androild Developer</option>
            <option value="iOS_developer">iOS Developer</option>
            <option value="mobile_designer">Mobile Designer</option>
          </optgroup>
          <optgroup label="Business">
            <option value="business_owner">Business Owner</option>
            <option value="freelancer">Freelancer</option>
          </optgroup>
          <optgroup label="Other">
            <option value="secretary">Secretary</option>
            <option value="maintenance">Maintenance</option>
          </optgroup>
        </select>
        
          <label>Interests:</label>
          <input type="checkbox" id="development" value="interest_development" name="user_interest"><label class="light" for="development">Development</label><br>
            <input type="checkbox" id="design" value="interest_design" name="user_interest"><label class="light" for="design">Design</label><br>
          <input type="checkbox" id="business" value="interest_business" name="user_interest"><label class="light" for="business">Business</label>
         -->
        </fieldset>
        <button type="submit">가입하기</button>
        <button onclick="javascript:history.back()">돌아가기</button>
     
      
    </body>
</html>