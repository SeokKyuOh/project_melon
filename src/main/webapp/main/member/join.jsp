<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Melon:음악이 필요한 순간</title>
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="assets/css/join.css">
    </head>
    <body>

      <form action="index.html" method="post">
      
        <h1>회원가입</h1>
        
        <fieldset>
          <label for="name">아이디</label>
          <input type="text" id="nick" name="user_nick">
                    
          <label for="password">비밀번호</label>
          <input type="password" id="password" name="user_password">
          <input type="password" id="password_check" name="user_password_check">
          <label for="password">비밀번호가 일치합니다/안합니다.</label>
          
          <label for="mail">이메일</label>
          <input type="email" id="mail" name="user_email">
          
          <label>성별</label>
          <input type="radio" id="genderM" value="genderM" name="gender">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" id="genderF" value="genderF" name="gender">여자
          
          <label for="phone">전화번호</label>
          <select id="phone1" name="user_phone1">
          	<option value="">010</option>
          	<option value="">011</option>
          	<option value="">016</option>
          	<option value="">017</option>
          	<option value="">019</option>
          </select>-
          <input type="phone" id="phone" name="user_phone2">-
          <input type="phone" id="phone" name="user_phone3">
          
          <label for="birth">생년월일</label>
          <input type="birth" id="birth" name="user_birth_year">년
          <input type="birth" id="birth" name="user_birth_month">월
          <input type="birth" id="birth" name="user_birth_day">일
          
          <label for="addr">주소</label>
          <input type="addr" id="addr" name="user_addr">
        
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
      </form>
      
    </body>
</html>