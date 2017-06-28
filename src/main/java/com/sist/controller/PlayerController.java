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
		//System.out.println(playlist.get(0).getAlbum_art());
		/*// music_number만 number로 값을 저장하기 때문에 변환 필요
		for(int i=0; i<playlist.size(); i++){
			String music_number=Integer.toString(playlist.get(i).getMusic_number());
			
		}*/
		String album_art=null;
		for(int i=0; i<playlist.size(); i++){
			album_art=playlist.get(0).getAlbum_art();
		}
		///model.addAttribute("album_art", album_art);
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
