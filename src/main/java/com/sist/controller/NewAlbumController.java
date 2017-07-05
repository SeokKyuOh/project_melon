package com.sist.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.sist.newest.NewAlbumVO;
import com.sist.newest.NewMusicService;
import com.sist.newest.NewMusicVO;

@Controller
public class NewAlbumController {
	@Autowired
	private NewMusicService service;
	@RequestMapping("main/newAlbum.do")
	public String newAlbum_list(Model model){		
		
		List<NewAlbumVO> list = service.NewAlbumData();

		

		model.addAttribute("list", list);
		model.addAttribute("main_jsp", "newest/newAlbum.jsp");
		return "main/main";
	}
}
