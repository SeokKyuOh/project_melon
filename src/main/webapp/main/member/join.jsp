<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Melon:������ �ʿ��� ����</title>
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel="stylesheet" type='text/css'>
        <link rel="stylesheet" type="text/css" href="assets/css/join.css">
    </head>
    <body>

      <form method="post" action="join_ok.do" name="join_frm">
      
        <h1>ȸ������</h1>
        
        <fieldset>
          <label for="name">���̵�</label>
          <input type="text" id="nick" name="user_nick" required>
          <input type="button" value="ID �ߺ�üũ" id="idcheckBtn">
                    
          <label for="password">��й�ȣ</label>
          <input type="password" id="password" name="user_password" required>
          ���Է�
          <input type="password" id="password_check" name="user_password_check">
          <label for="password">��й�ȣ�� ��ġ�մϴ�/���մϴ�.</label>
          
          <label for="mail">�̸���</label>
          <input type="email" id="mail" name="user_email">
          
          <label>����</label>
          <input type="radio" id="genderM" value="genderM" name="gender">����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" id="genderF" value="genderF" name="gender">����
          
          <label for="phone">��ȭ��ȣ</label>
          <select id="phone1" name="user_phone1">
          	<option value="">010</option>
          	<option value="">011</option>
          	<option value="">016</option>
          	<option value="">017</option>
          	<option value="">019</option>
          </select>-
          <input type="phone" id="phone" name="user_phone2">-
          <input type="phone" id="phone" name="user_phone3">
          
          <label for="birth">�������</label>
          <input type="birth" id="birth" name="user_birth_year">��
          <input type="birth" id="birth" name="user_birth_month">��
          <input type="birth" id="birth" name="user_birth_day">��
          
          <label for="addr">�ּ�</label>
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
        <button type="submit">�����ϱ�</button>
      </form>
      
    </body>
</html>