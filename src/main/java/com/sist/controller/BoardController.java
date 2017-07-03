package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.board.dao.BoardDAO;
import com.sist.board.dao.BoardVO;

@Controller
public class BoardController {
	@Autowired	
	private BoardDAO dao;
	
	@RequestMapping("main/board_list.do")
	public String board_list(Model model, int boardType_id){//boardType_id 로 가져오기 
		/*if(page==null) page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=10;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=rowSize*curPage;*/
		
		List<BoardVO> list=dao.boardList(boardType_id);
	
		model.addAttribute("list",list);
		//model.addAttribute("curPage", curPage);
		model.addAttribute("main_jsp", "board/board_list.jsp");
			
		return "main/main";
		
		
	}
	@RequestMapping("main/board_content.do")
	public String board_content(int board_id,Model model){
		
		BoardVO vo = dao.boardContent(board_id);
		
		model.addAttribute("vo", vo);
		model.addAttribute("main_jsp","board/board_content.jsp");
		
		return "main/main";
		
		
	}
	@RequestMapping("main/board_insert.do")
	public String board_insert(Model model){
		model.addAttribute("main_jsp", "board/board_insert.jsp");
		return "main/main";
		
	}
	
	@RequestMapping("main/board_update.do")
	public String board_update(Model model,int board_id){
		BoardVO vo = dao.boardUpdate(board_id);
		model.addAttribute("vo", vo);
		model.addAttribute("main_jsp", "board/board_update.jsp");
		
		
		return "main/man";
		
	}
	

		
}
