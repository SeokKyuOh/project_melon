package com.sist.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.sist.newest.NewMusicService;
import com.sist.newest.NewMusicVO;

@Controller
public class NewMusicController {
	@Autowired
	private NewMusicService service;
	@RequestMapping("main/newAlbumChart.do")
	public String newMusic_list(Model model){
		List<NewMusicVO> list = service.NewMusicData();

		model.addAttribute("list", list);
	
		model.addAttribute("main_jsp", "newest/newAlbumChart.jsp");
		return "main/main";
	}

}


