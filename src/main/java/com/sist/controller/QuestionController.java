package com.sist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.board.dao.QuestionDAO;
import com.sist.board.dao.QuestionVO;


@Controller
public class QuestionController {

	@Autowired

	private QuestionDAO dao;

	@RequestMapping("main/notice_content.do")
	public String question_Content(int question_id, String nick, int id,Model model) {

		QuestionVO vo = dao.questionContent(question_id);

		model.addAttribute("vo", vo);
		model.addAttribute("id", id);
		model.addAttribute("nick", nick);
		model.addAttribute("main_jsp", "notice/notice_content.jsp");

		return "main/main";

	}
	@RequestMapping("main/notice_update.do")
	public String question_Update(QuestionVO vo, String nick, int id,Model model) {
		dao.questionUpdate(vo);
		model.addAttribute("main_jsp", "mypage.jsp");
		return "redirect:/main/mypage.do?nick="+nick+"&id="+id;

	}
}
