package com.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
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
	
	@RequestMapping("main/ganre.do")
	public String ganre_page(Model model){
		model.addAttribute("main_jsp","ganre/ganre.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/buy_ticket.do")
	public String buy_ticket_page(Model model){
		model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/notice.do")
	public String notice_page(Model model){
<<<<<<< HEAD
		model.addAttribute("main_jsp","board/board_list.jsp");
=======
		model.addAttribute("main_jsp","notice/notice.jsp");
>>>>>>> 9d38ec7c2a1d307b589b57cc326b1534f1c69c5a
		return "main/main";
	}
	
	@RequestMapping("main/mypage.do")
	public String mypage_page(Model model){
		model.addAttribute("main_jsp","mypage/mypage.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/join.do")
	public String join_page(Model model){
		model.addAttribute("main_jsp", "member/join.jsp");
		return "main/main";
	}
	
	
}










