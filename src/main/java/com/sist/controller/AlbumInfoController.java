package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.albumInfo.AlbumInfoDAO;
import com.sist.albumInfo.AlbumInfoVO;


@Controller
public class AlbumInfoController {
	@Autowired
	private AlbumInfoDAO dao;
	@RequestMapping("main/albumInfo.do")
	public String albumInfo(int album_id,Model model){
		AlbumInfoVO vo = dao.albumInfo(album_id);

		model.addAttribute("vo", vo);
	
		model.addAttribute("main_jsp", "albumInfo/albumInfo.jsp");
		return "main/main";
	}
}
