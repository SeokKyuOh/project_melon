<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
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
		<h2>���� ����</h2>
		<!-- ���� ������ �̿�� ����ϱ� -->
		<div class="row" style="width: 70%">
        	<div class="span12">
    			<ul class="thumbnails" style="list-style:none;">
                	<li class="span5 clearfix">
                  		<div class="thumbnail clearfix">
                    		<img src="images/30.JPG" class="pull-left span2 clearfix" style='margin-right:10px'>
                    		<div class="caption" class="pull-left">
                     			<h3 style="color: blue">${name }</h3>
                      			<b>����: ${price} ��</b>
                    		</div>
                  		</div>
                	</li>  
            	</ul>
       	 	</div>	
        </div>	
		<p>�ش� �̿���� ������ ������ �������ּ���.</p>
		<form method="post" action="payment_ok.do">
			<input type="hidden" value="${id}" name="id">
			<input type="hidden" value="${type}" name="type">
			<div class="form-group" style="width:80%;">
				<!-- <label for="sel1">Select list (select one):</label> -->
				<select class="form-control" id="sel1">
					<option>-----����-----</option>
					<option value="account">�ǽð� ������ü</option>
	        		<option value="deposit">������ �Ա�</option>
	        		<option value="card">ī�� ����</option>
	      		</select>
	   		</div>
	   		<hr>
	   		
	   		<div id="account" style="display: none;width:80%;" class="form-group"> 
				<p>�ǽð� ������ü</p>
				<select class="form-control" id="sel2">
		   			<option value=''>---����---</option>
					<option value='SC��������'>SC����</option>
			       	<option value='��������'>����</option>
			       	<option value='NH'>NH</option>
			       	<option value='��������'>����</option>
			       	<option value='�츮����'>�츮</option>
			      	<option value='��ü��'>��ü��</option>
			       	<option value='�ϳ�����'>�ϳ�</option>
		       	</select>
		       	<br>
		       	<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">���¹�ȣ �Է�</label>
        				<input class="form-control" id="num1" type="text" placeholder="ù �ڸ� ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="num1" type="text" placeholder="�ι�° �ڸ� ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="num1" type="text" placeholder="������ �ڸ� ��ȣ �Է�"> 
      				</div>
    			</div>
				<br>
				<div class="form-group">
  					<label for="pwd">���� ��й�ȣ:</label>
  					<input type="password" class="form-control" id="pwd">
				</div>
				<br>
				<div class="form-group">
				  <label for="usr">������:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">Ȯ��</button>
	   		</div>
	   		
	   		<div id="deposit" style="display: none;width:80%;">
	   			<p>������ �Ա�</p>
	   			<select class="form-control" id="sel2">
		   			<option value=''>---����---</option>
					<option value='����'>�������� : 152568-45-962457</option>
			       	<option value='����'>�������� : 312-475-513476</option>
			       	<option value='�ϳ�'>�ϳ����� : 166-216570-86429</option>
		       	</select>
		       	<br>
				<div class="form-group">
				  <label for="usr">������:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">Ȯ��</button>
	   		</div>
	   		
	   		<div id="card" style="display: none;width:80%;">
	   			<p>ī�� ����</p>
	   			<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">ī�� ��ȣ �Է�</label>
        				<input class="form-control" id="n1" type="text" placeholder="ù��° ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n2" type="text" placeholder="�ι�° ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n3" type="text" placeholder="����° ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="n4" type="text" placeholder="������ ��ȣ �Է�"> 
      				</div>
    			</div>
				<br>
				<div class="form-group row">
     				<div class="col-xs-2">
     					<label for="ex1">ī�� ��ȿ�Ⱓ</label>
        				<input class="form-control" id="e1" type="text" placeholder="��"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="e2" type="text" placeholder="��"> 
      				</div>
    			</div>
    			<br>
				<div class="form-group">
  					<label for="pwd">���� ��й�ȣ:</label>
  					<input type="password" class="form-control" id="pwd">
				</div>
				<br>
				<div class="form-group">
				  <label for="usr">csv ��ȣ:</label>
				  <input type="text" class="form-control">
				</div>
				<br>
	   			<button type="submit" class="btn btn-default" style="background-color: #A2C5F9; color:white;">Ȯ��</button>
	   		</div>
	  	</form>
	</div>
</body>
</html>