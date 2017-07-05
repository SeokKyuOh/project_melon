package com.sist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;

@Controller
public class MainController {
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("main/main.do")
	public String main_page(Model model){
		model.addAttribute("main_jsp","default.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/chart.do")
	public String chart_page(Model model){
		model.addAttribute("main_jsp","chart/chart.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/new.do")
	public String new_page(Model model){
		model.addAttribute("main_jsp","new/new.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/genre.do")
	public String ganre_page(Model model){
		model.addAttribute("main_jsp","genre/genre.jsp");
		return "main/main";
	}
	
	/*@RequestMapping("main/buy_ticket.do")
	public String buy_ticket_page(Model model){
		model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");
		return "main/main";
	}*/
	
	@RequestMapping("main/notice.do")
	public String notice_page(Model model){
		model.addAttribute("main_jsp","board/board_list.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/mypage.do")
	public String mypage_page(Model model, String nick){
		model.addAttribute("main_jsp","mypage/mypage.jsp");
		MemberVO vo=dao.memberAllData(nick);
		MemberVO qvo=dao.mypageQuestionSummary(nick);
		model.addAttribute("vo", vo);
		model.addAttribute("qvo",qvo);
		return "main/main";
	}
	
	@RequestMapping("main/login.do")
	public String login_page(Model model){
		return "main/member/login";
	}
	/*
	@RequestMapping("main/search.do")
	public String search_page(Model model){
		model.addAttribute("main_jsp", "search/search.jsp");
		return "main/main";
	}*/

}










