package com.sist.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberRestController {

@RequestMapping("main/mypage_into.do")
public String mypage_into(String nick, int id){
	String data="";
	if(nick==""){
		data="<script>"
				+"alert(\"�α��� �� �̿����ּ���\");"
				+"location.href=\"login.do\";"
				+"</script>";
	}
	else{
		data="<script>"
				+"location.href=\"mypage.do?nick="+nick+"&id="+id+"\";"
				+"</script>";
	}
	return data;
}
}
