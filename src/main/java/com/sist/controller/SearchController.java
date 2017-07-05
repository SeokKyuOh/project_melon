package com.sist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.playlist.dao.MusicVO;
import com.sist.search.dao.SearchDAO;

@Controller
public class SearchController {
	@Autowired
	private SearchDAO dao;
	
	@RequestMapping("main/search.do")
	public String search_result(String music_search, Model model){
		MusicVO mvo_artist = dao.artistData(music_search);
		MusicVO mvo_song = dao.songData(music_search);
		model.addAttribute("mvo_artist", mvo_artist);
		model.addAttribute("mvo_song", mvo_song);
		model.addAttribute("main_jsp", "search/search.jsp");
		return "main/search/search";
	}
	
	@RequestMapping("main/search_artist.do")
	public String search_artist(Model model){
		model.addAttribute("main_jsp", "search/search_artist.jsp");
		return "main/search/search_artist";
	}
	
	@RequestMapping("main/search_album.do")
	public String search_album(Model model){
		model.addAttribute("main_jsp", "search/search_album.jsp");
		return "main/search/search_album";
	}
	
	@RequestMapping("main/search_song.do")
	public String search_song(Model model){
		model.addAttribute("main_jsp", "search/search_song.jsp");
		return "main/search/search_song";
	}
}
