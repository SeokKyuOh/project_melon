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
	
	@Autowired									//메인 앨범 이미지 때문에 추가 (7/6 오석규)
	private GenreService genreservice;	//메인 앨범 이미지 때문에 추가 (7/6 오석규)
	
	@Autowired
	MemberDAO dao;

	@Autowired
	QuestionDAO qdao;
	
	List<Daily_ChartVO> daily_list;		// 상단 차트순위 때문에 추가 (7/6 오석규)
	
	@RequestMapping("main/main.do")
	public String main_page(Model model){
		//실시간 차트 불러오기
		daily_list=service.Daily_ChartData();
		List<GenreVO> album_main =genreservice.genreAlbumData(1);				//메인 앨범 이미지 때문에 추가 (7/6 오석규)
		
		//뮤직 비디오 불러오기
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
		model.addAttribute("album_main", album_main);									//메인 앨범 이미지 때문에 추가 (7/6 오석규)
		model.addAttribute("main_jsp","default.jsp");
		return "main/main";
	}
	
}