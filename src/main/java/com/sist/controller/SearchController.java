package com.sist.controller;

import java.util.List;

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
	
	List<MusicVO> artist_list;
	List<MusicVO> song_list;
	
	int artist_list_size;
	int song_list_size;
	
	@RequestMapping("main/search.do")
	public String search_result(String music_search, Model model){
		artist_list = null;
		song_list = null;
		artist_list_size = 0;
		song_list_size = 0;
		
		artist_list = dao.artistData(music_search);
		song_list = dao.songData(music_search);
		
		artist_list_size = artist_list.size();
		song_list_size = song_list.size();
		
		model.addAttribute("artist_list", artist_list);
		model.addAttribute("song_list", song_list);
		model.addAttribute("artist_list_size", artist_list_size);
		model.addAttribute("song_list_size", song_list_size);
		model.addAttribute("main_jsp", "search/search.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/search_artist.do")
	public String search_artist(Model model){
		model.addAttribute("artist_list", artist_list);
		model.addAttribute("artist_list_size", artist_list_size);
		model.addAttribute("main_jsp", "search/search_artist.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/search_song.do")
	public String search_song(Model model){
		model.addAttribute("song_list", song_list);
		model.addAttribute("song_list_size", song_list_size);
		model.addAttribute("main_jsp", "search/search_song.jsp");
		return "main/main";
	}
	
	@RequestMapping("main/search_album.do")
	public String search_album(Model model){
		model.addAttribute("main_jsp", "search/search_album.jsp");
		return "main/main";
	}
	
	
}

