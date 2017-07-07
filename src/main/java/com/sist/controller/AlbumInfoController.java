package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.albumInfo.AlbumInfoDAO;
import com.sist.albumInfo.AlbumInfoVO;
import com.sist.albumInfo.AlbumMusicVO;
import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;


@Controller
public class AlbumInfoController {
	@Autowired
	private AlbumInfoDAO dao;
	
	@Autowired							// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	private ChartService service;	//��� ��Ʈ���� ������ �߰� (7/6 ������)
	
	@RequestMapping("main/albumInfo.do")
	public String albumInfo(int album_id,Model model){
		AlbumInfoVO vo = dao.albumInfo(album_id);
		model.addAttribute("vo", vo);
		List<AlbumMusicVO> list =dao.albumMusic(album_id);
		
		List<Daily_ChartVO> daily_list=service.Daily_ChartData();	// ��� ��Ʈ���� ������ �߰� (7/6 ������)
		model.addAttribute("daily_list", daily_list);							// ��� ��Ʈ���� ������ �߰� (7/6 ������)
		
		model.addAttribute("list", list);
		model.addAttribute("main_jsp", "albumInfo/albumInfo.jsp");
		return "main/main";
	}
}
