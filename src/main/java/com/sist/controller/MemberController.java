package com.sist.controller;

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
	
	@RequestMapping("main/login_ok.do")
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
				MemberVO vo=dao.memberAllData(member_nick);
				session.setAttribute("nick", vo.getMember_nick());
				session.setAttribute("name", vo.getMember_name());
				session.setAttribute("id", vo.getMember_id());
				session.setAttribute("phone", vo.getMember_phone());
				session.setAttribute("email", vo.getMember_email());
				session.setAttribute("addr", vo.getMember_addr());
				session.setAttribute("pwd", vo.getMember_pwd());
				session.setAttribute("birthdate", vo.getMember_birthdate());
				session.setAttribute("gender", vo.getMember_gender());
				session.setAttribute("regdate", vo.getMember_regdate());
				session.setAttribute("cash", vo.getMember_cash());
				session.setAttribute("post", vo.getMember_post());
				
			}else{
				res="NOPWD";
			}
		}
		model.addAttribute("res", res);
		return "main/member/login_ok";
	}
	
	@RequestMapping("main/logout.do")
	public String member_logout(HttpSession session){
		session.invalidate();
		return "redirect:/main/main.do"; 
	}
}
