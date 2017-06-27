package com.sist.controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;

@Controller
public class MemberController {
	
=======
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("main/login.do")
	public String member_login(String member_nick, String member_pwd, HttpSession session, Model model){
		int idCount=dao.memberIdCheck(member_nick);
		String res="";
		if(idCount==0){
			res="NOID";
		}
		else{
			String pwd_db=dao.memberGetPwd(member_nick);
			if(member_pwd.equals(pwd_db)){
				res="OK";
				MemberVO vo=dao.memberInfoData(member_nick);
				session.setAttribute("nick", vo.getMember_nick());
				session.setAttribute("name", vo.getMember_name());
				
			}else{
				res="NOPWD";
			}
		}
		model.addAttribute("res", res);
		return "main/member/login_ok";
	}
>>>>>>> c1ee099ab4a1ed40331eb9e125b2ca51118c41fd
}
