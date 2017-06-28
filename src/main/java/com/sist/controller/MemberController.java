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
	
	//회원가입
	@RequestMapping("main/join.do")
	public String join_page(Model model){
		model.addAttribute("main_jsp", "member/join.jsp");		
		return "main/member/join";
	}
	
	//아이디 체크
	@RequestMapping("main/idcheck.do")
	public String member_idcheck(){
		return "main/member/idcheck";
	}
	
	//아이디 체크 확인
	@RequestMapping("main/idcheck_result.do")
	public String member_idcheck_result(String member_nick, Model model){
		int count=dao.memberIdCheck(member_nick);
		model.addAttribute("count", count);
		model.addAttribute("member_nick", member_nick);
		return "main/member/idcheck_result";
	}

}
