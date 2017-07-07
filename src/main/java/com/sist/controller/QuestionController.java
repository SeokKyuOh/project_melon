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
	public String question_Content(int question_id, String nick, int id, Model model) {

		QuestionVO vo = dao.questionContent(question_id);

		model.addAttribute("vo", vo);
		model.addAttribute("id", id);
		model.addAttribute("nick", nick);
		model.addAttribute("main_jsp", "notice/notice_content.jsp");

		return "main/main";

	}

	@RequestMapping("main/notice_update.do")
	public String question_Update(QuestionVO vo, String nick, int id, Model model) {
		dao.questionUpdate(vo);
		model.addAttribute("main_jsp", "mypage.jsp");
		return "redirect:/main/mypage.do?nick=" + nick + "&id=" + id;

	}

	@RequestMapping("main/notice_insert.do")
	public String question_insert(Model model, String nick, int id) {
		model.addAttribute("main_jsp", "notice/notice_insert.jsp");
		return "main/main";

	}

	@RequestMapping("main/notice_insert_ok.do")
	public String question_insert_ok(QuestionVO vo, String nick, int id) {

		dao.questionInsert(vo);
		return "redirect:/main/mypage.do?nick=" + nick + "&id=" + id;
	}

	@RequestMapping("main/notice_delete.do")
	public String board_delete(int question_id, Model model) {
		model.addAttribute("question_id", question_id);
		dao.questionDelete(question_id);
		return "main/notice/notice_delete";
	}
}
