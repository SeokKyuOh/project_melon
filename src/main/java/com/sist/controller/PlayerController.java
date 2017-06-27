package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.playlist.dao.PlaylistDAO;
import com.sist.playlist.dao.PlaylistMusicVO;

@Controller
public class PlayerController {
	
	@Autowired
	private PlaylistDAO playlistDAO;
	
	@RequestMapping("main/player.do")
	public String getPlaylist(int member_id, Model model){
		// Playlist, Playlist_music, Album, Music 조인한 결과 가져오기
		List<PlaylistMusicVO> playlist=playlistDAO.getPlaylist(member_id);
		model.addAttribute("playlist", playlist);
		return "main/player/player";
	}
/*	
	@RequestMapping("main/player.do")
	public String getPlayer(Model model){
		return "main/player/player";
	}	
*/
}
