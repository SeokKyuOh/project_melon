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
	
	$('#sub').click(function() {
		//alert("click");
		
		var ch = $.checkForm();
		
		if(ch == false) {
			alert("fail");
			return;
		}
		else {
			alert("submit");
			$('#form1').submit();			
		}
	});
	
	$.checkForm = function() {
		//alert("call");
		if($('#account').css("display") != "none"){
			alert("accountclick");
			if($('#sel2').val() == "st2") {
				alert("������ ������ �ּ���");
				$('#sel2').focus();
				return false;
			} else if($('#num1').val() == '') {
				alert("ù��° ��ȣ�� �Է��ϼ���.");
				$('#num1').focus();
				return false;
			} else if($('#num2').val() == '') {
				alert("�ι�° ��ȣ�� �Է��ϼ���.");
				$('#num2').focus();
				return false;
			} else if($('#num3').val() == '') {
				alert("����° ��ȣ�� �Է��ϼ���.");
				$('#num3').focus();
				return false;
			} else if($('#pwd').val() == '') {
				alert("��й�ȣ�� �Է��ϼ���.");
				$('#num4').focus();
				return false;
			} else if($('#usr').val() == '') {
				alert("�����ָ� �Է��ϼ���.");
				$('#usr').focus();
				return false;
			}
		} 
		
		if($('#deposit').css("display") != "none") {
			alert("depositclick");
			if($('#sel3').val() == 'st3') {
				alert("������ ������ �ּ���");
				$('#sel3').focus();
				return false;
			} else if($('#musr').val() == '') {
				alert("�����ָ� �Է��ϼ���.");
				$('#musr').focus();
				return false;
			}
		} 
		
		if ($('#card').css("display") != "none") {
			alert("cardclick");
			if($('#n1').val() == '') {
				alert("ù��° ��ȣ�� �Է��ϼ���.");
				$('#n1').focus();
				return false;
			} else if($('#n2').val() == '') {
				alert("�ι�° ��ȣ�� �Է��ϼ���.");
				$('#n2').focus();
				return false;
			} else if($('#n3').val() == '') {
				alert("����° ��ȣ�� �Է��ϼ���.");
				$('#n3').focus();
				return false;
			} else if($('#n4').val() == '') {
				alert("�׹�° ��ȣ�� �Է��ϼ���.");
				$('#n4').focus();
				return false;
			} else if($('#e1').val() == '') {
				alert("��ȿ�Ⱓ�� ���� �Է��ϼ���.");
				$('#e1').focus();
				return false;
			} else if($('#e2').val() == '') {
				alert("��ȿ�Ⱓ�� ���� �Է��ϼ���.");
				$('#e2').focus();
				return false;
			} else if($('#cpwd').val() == '') {
				alert("��й�ȣ�� �Է��ϼ���.");
				$('#cpwd').focus();
				return false;
			} else if($('#csv').val() == '') {
				alert("csv ��ȣ�� �Է��ϼ���.");
				$('#csv').focus();
				return false;
			}
		}
	};
	
	
	
});

</script>
</head>
<body>
	<section id="contentSection">
	<div class="container" style="width: 90%">
		<h2 align="center">���� ����</h2>
		<!-- ���� ������ �̿�� ����ϱ� -->
		<div class="row" style="width: 80%">
        	<div class="span12">
    			<ul class="thumbnails" style="list-style:none;">
                	<li class="span5 clearfix">
                  		<div class="thumbnail clearfix">
                    		<img src="images/${name }.png" class="pull-left span2 clearfix" style="margin-right:10px;float: left;" width="200px">
                    		<div class="caption" class="pull-left" style="float: left;margin-left: 40px">
                     			<h3 style="color: blue">${name }</h3>
                      			<b>����: ${price} ��</b>
                    		</div>
                  		</div>
                	</li>  
            	</ul>
       	 	</div>	
        </div>	
		<p>�ش� �̿���� ������ ������ �������ּ���.</p>
		<form method="post" action="payment_ok.do" id="form1">
			<input type="hidden" value="${id}" name="id">
			<input type="hidden" value="${type}" name="type">
			<div class="form-group" style="width:80%;">
				<!-- <label for="sel1">Select list (select one):</label> -->
				<select class="form-control" id="sel1">
					<option value='st1'>-----����-----</option>
					<option value="account">�ǽð� ������ü</option>
	        		<option value="deposit">������ �Ա�</option>
	        		<option value="card">ī�� ����</option>
	      		</select>
	   		</div>
	   		<hr>
	   		
	   		<div id="account" style="display: none;width:80%;" class="form-group"> 
				<p>�ǽð� ������ü</p>
				<select class="form-control" id="sel2">
		   			<option value='st2'>---����---</option>
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
        				<input class="form-control" id="num2" type="text" placeholder="�ι�° �ڸ� ��ȣ �Է�"> 
      				</div>
      				<div class="col-xs-2">
      					<label for="ex1">&nbsp;&nbsp;</label>
        				<input class="form-control" id="num3" type="text" placeholder="������ �ڸ� ��ȣ �Է�"> 
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
	   			<button type="button" class="btn btn-default" style="background-color: #A2C5F9; color:white;" id="sub">Ȯ��</button>
	   		</div>
	   		
	   		<div id="deposit" style="display: none;width:80%;">
	   			<p>������ �Ա�</p>
	   			<select class="form-control" id="sel3">
		   			<option value='st3'>---����---</option>
					<option value='����'>�������� : 152568-45-962457</option>
			       	<option value='����'>�������� : 312-475-513476</option>
			       	<option value='�ϳ�'>�ϳ����� : 166-216570-86429</option>
		       	</select>
		       	<br>
				<div class="form-group">
				  <label for="usr">������:</label>
				  <input type="text" class="form-control" id="musr">
				</div>
				<br>
	   			<button type="button" class="btn btn-default" style="background-color: #A2C5F9; color:white;" id="sub">Ȯ��</button>
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
  					<input type="password" class="form-control" id="cpwd">
				</div>
				<br>
				<div class="form-group">
				  <label for="usr">csv ��ȣ:</label>
				  <input type="text" class="form-control" id="csv">
				</div>
				<br>
	   			<button type="button" class="btn btn-default" style="background-color: #A2C5F9; color:white;" id="sub">Ȯ��</button>
	   		</div>
	  	</form>
	</div>
	</section>
</body>
</html>