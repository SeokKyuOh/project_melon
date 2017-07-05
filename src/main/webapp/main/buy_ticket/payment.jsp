<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결제</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#sel1').change(function() {
		//alert($(this).val());
		
		if($(this).val() == "account") {
			$('#account').show();
			$('#deposit').hide();
			$('#card').hide();
		} else if($(this).val() == "deposit") {
			$('#account').hide();
			$('#deposit').show();
			$('#card').hide();
		} else if($(this).val() == "card") {
			$('#account').hide();
			$('#deposit').hide();
			$('#card').show();
		}
		
	});
});

</script>
</head>
<body>
	<div class="container">
		<h2>결제 선택</h2>
		<!-- 내가 선택한 이용권 출력하기 -->
		<div class="row" style="width: 70%">
        	<div class="span12">
    			<ul class="thumbnails" style="list-style:none;">
                	<li class="span5 clearfix">
                  		<div class="thumbnail clearfix">
                    		<img src="images/30.JPG" class="pull-left span2 clearfix" style='margin-right:10px'>
                    		<div class="caption" class="pull-left">
                     			<h3 style="color: blue">${name }</h3>
                      			<b>가격: ${price} 원</b>
                    		</div>
                  		</div>
                	</li>  
            	</ul>
       	 	</div>	
        </div>	
		<p>해당 이용권을 결제할 수단을 선택해주세요.</p>
		<form method="post" action="payment_ok.do">
			<input type="hidden" value="${id}" name="id">
			<input type="hidden" value="${type}" name="type">
			<div class="form-group" style="width:80%;">
				<!-- <label for="sel1">Select list (select one):</label> -->
				<select class="form-control" id="sel1">
					<option>-----선택-----</option>
					<option value="account">실시간 계좌이체</option>
	        		<option value="deposit">무통장 입금</option>
	        		<option value="card">카드 결제</option>
	      		</select>
	   		</div>
	   		<hr>
	   		
	   		<div id="account" style="display: none;width:80%;" class="form-group"> 
				<p>실시간 계좌이체</p>
				<select class="form-control" id="sel2">
		   			<option value=''>---선택---</option>
					<option value='SC제일은행'>SC제일</option>
			       	<option value='국민은행'>국민</option>
			       	<option value='NH'>NH</option>
			       	<option value='신한은행'>신한</option>
			       	<option value='우리은행'>우리</option>
			      	<option value='우체국'>우체국</option>
			       	<option value='하나은행'>하나</option>
		       	</select>
		       	<br>
		       	<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">계좌번호 입력</label>
        				<input class="form-control" id="num1" type="text" placeholder="첫 자리 번호 입력"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="num1" type="text" placeholder="두번째 자리 번호 입력"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="num1" type="text" placeholder="마지막 자리 번호 입력"> 
      				</div>
    			</div>
				<br>
				<div class="form-group">
  					<label for="pwd">계좌 비밀번호:</label>
  					<input type="password" class="form-control" id="pwd">
				</div>
				<br>
				<div class="form-group">
				  <label for="usr">예금주:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">확인</button>
	   		</div>
	   		
	   		<div id="deposit" style="display: none;width:80%;">
	   			<p>무통장 입금</p>
	   			<select class="form-control" id="sel2">
		   			<option value=''>---선택---</option>
					<option value='국민'>국민은행 : 152568-45-962457</option>
			       	<option value='신한'>신한은행 : 312-475-513476</option>
			       	<option value='하나'>하나은행 : 166-216570-86429</option>
		       	</select>
		       	<br>
				<div class="form-group">
				  <label for="usr">예금주:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">확인</button>
	   		</div>
	   		
	   		<div id="card" style="display: none;width:80%;">
	   			<p>카드 결제</p>
	   			<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">카드 번호 입력</label>
        				<input class="form-control" id="n1" type="text" placeholder="첫번째 번호 입력"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n2" type="text" placeholder="두번째 번호 입력"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n3" type="text" placeholder="세번째 번호 입력"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n4" type="text" placeholder="마지막 번호 입력"> 
      				</div>
    			</div>
				<br>
				<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">카드 유효기간</label>
        				<input class="form-control" id="e1" type="text" placeholder="월"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="e2" type="text" placeholder="년"> 
      				</div>
    			</div>
    			<br>
				<div class="form-group">
  					<label for="pwd">결제 비밀번호:</label>
  					<input type="password" class="form-control" id="pwd">
				</div>
				<br>
				<div class="form-group">
				  <label for="usr">csv 번호:</label>
				  <input type="text" class="form-control">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">확인</button>
	   		</div>
	  	</form>
	</div>
</body>
</html>