package com.sist.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;
import com.sist.newest.NewAlbumVO;
import com.sist.newest.NewMusicService;
import com.sist.newest.NewMusicVO;

@Controller
public class NewAlbumController {
	@Autowired
	private NewMusicService service;
	
	@Autowired							// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	private ChartService chartservice;	//��� ��Ʈ���� ������ �߰� (7/6 ������)
	
	@RequestMapping("main/newAlbum.do")
	public String newAlbum_list(Model model){		
		
		List<NewAlbumVO> list = service.NewAlbumData();
		
		List<Daily_ChartVO> daily_list=chartservice.Daily_ChartData();	// ��� ��Ʈ���� ������ �߰� (7/6 ������)
		model.addAttribute("daily_list", daily_list);							// ��� ��Ʈ���� ������ �߰� (7/6 ������)

		model.addAttribute("list", list);
		model.addAttribute("main_jsp", "newest/newAlbum.jsp");
		return "main/main";
	}
	
	//�������� ���� �߰�(7/7 ������)
	@RequestMapping("main/newMusicVideo.do")
	public String newMusicVideo_list(Model model){
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
		
		int mv_size = mv.length;
		model.addAttribute("mv_size", mv_size);
		model.addAttribute("mv", mv);
		model.addAttribute("mvid", mvid);
		model.addAttribute("main_jsp", "newest/newMusicVideo.jsp");
		return "main/main";
	}
}
