package com.sist.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;
import com.sist.newest.NewMusicService;
import com.sist.newest.NewMusicVO;

@Controller
public class NewMusicController {
	@Autowired
	private NewMusicService service;
	
	@Autowired								// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	private ChartService chartservice;	//��� ��Ʈ���� ������ �߰� (7/6 ������)
	
	
	@RequestMapping("main/newAlbumChart.do")
	public String newMusic_list(Model model){
		List<NewMusicVO> list = service.NewMusicData();

		model.addAttribute("list", list);
		
		List<Daily_ChartVO> daily_list=chartservice.Daily_ChartData();	// ��� ��Ʈ���� ������ �߰� (7/6 ������)
		model.addAttribute("daily_list", daily_list);									// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	
		model.addAttribute("main_jsp", "newest/newAlbumChart.jsp");
		return "main/main";
	}

}


