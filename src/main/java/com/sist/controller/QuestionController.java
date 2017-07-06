package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.board.dao.BoardVO;
import com.sist.board.dao.QuestionDAO;
import com.sist.board.dao.QuestionVO;

@Controller
public class QuestionController {

	@Autowired

	private QuestionDAO dao;
/*	
	@RequestMapping("main/mypage.do")
	public String question_list(Model model, int member_id){//member_id 로 가져오기 
		if(page==null) page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=10;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=rowSize*curPage;
		
		List<QuestionVO> list=dao.questionList(member_id);
	
		model.addAttribute("list",list);
		//model.addAttribute("curPage", curPage);
		model.addAttribute("main_jsp", "mypage/mypage.jsp");
			
		return "main/main";
		
		
	}
	*/
	
	@RequestMapping("main/notice_content.do")
	public String question_lontent(int question_id,Model model){
		
		QuestionVO vo = dao.questionContent(question_id);
		
		model.addAttribute("vo", vo);
		model.addAttribute("main_jsp","notice/notice_content.jsp");
		
		return "main/main";
		
		
	}
}
