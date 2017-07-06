package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.genre.GenreService;
import com.sist.genre.GenreVO;
import com.sist.newest.NewMusicService;
import com.sist.newest.NewMusicVO;

@Controller
public class GenreChartController {
	@Autowired
	private GenreService service;
	@RequestMapping("main/genreMusicChart.do")
	public String genreChart_list(int genre_id,Model model){
		List<GenreVO> list = service.genreListData(genre_id);
		model.addAttribute("list", list);		
		List<GenreVO> album = service.genreAlbumData(genre_id);
		model.addAttribute("album", album);
		model.addAttribute("main_jsp", "genre/genre.jsp");

		return "main/main";
	}
	@RequestMapping("main/genreAlbumChart.do")
	public String genreAlbum_list(int genre_id,Model model){
		List<GenreVO> chart = service.genreAlbumList(genre_id);
		model.addAttribute("chart", chart);		
		List<GenreVO> album = service.genreAlbumData(genre_id);
		model.addAttribute("album", album);
		model.addAttribute("main_jsp", "genre/genreAlbum.jsp");

		return "main/main";
	}
	

}
