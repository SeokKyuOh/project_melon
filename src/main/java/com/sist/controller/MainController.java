package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.board.dao.QuestionDAO;
import com.sist.board.dao.QuestionVO;
import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;
import com.sist.genre.GenreService;
import com.sist.genre.GenreVO;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;
import com.sist.playlist.dao.MusicVO;
import com.sist.ticket.dao.Buy_downloadVO;
import com.sist.ticket.dao.Buy_streamingVO;

@Controller
public class MainController {
	@Autowired
	private ChartService service;	
	
	@Autowired									//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
	private GenreService genreservice;	//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
	
	@Autowired
	MemberDAO dao;

	@Autowired
	QuestionDAO qdao;
	
	List<Daily_ChartVO> daily_list;		// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	
	@RequestMapping("main/main.do")
	public String main_page(Model model){
		//�ǽð� ��Ʈ �ҷ�����
		daily_list=service.Daily_ChartData();
		List<GenreVO> album_main =genreservice.genreAlbumData(1);				//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
		
		//���� ���� �ҷ�����
		String [] mv ={
				"twice_signal",
                "minzy_ninano", 
                "ftisland_wind",
                "Lovelyz",
                "hyukoh_tomboy",
                "50cent"
        };
		String [] mvid = {
				"VQtonf1fv_s",
				"nmZGpBIz_Gg",
				"QhPOwcvhGSA",
				"wMCoQaE0LvQ",
				"pC6tPEaAiYU",
				"5qm8PH4xAss"
		};
		model.addAttribute("mv", mv);
		model.addAttribute("mvid", mvid);		
		model.addAttribute("daily_list", daily_list);
		model.addAttribute("album_main", album_main);									//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
		model.addAttribute("main_jsp","default.jsp");
		return "main/main";
	}
	
}