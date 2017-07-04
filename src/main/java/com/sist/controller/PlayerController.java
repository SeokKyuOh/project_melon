package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sist.playlist.dao.PlaylistDAO;
import com.sist.playlist.dao.PlaylistMusicVO;

@Controller
public class PlayerController {

	@Autowired
	private PlaylistDAO playlistDAO;

	@RequestMapping("main/player.do")
	public String getPlaylist(String member_id, Model model) {

		// 로그인한 경우
		if (member_id != null) {
			
			int memberId=Integer.parseInt(member_id);
			
			// 이용권 여부 확인하기
			int isPlayerValid = playlistDAO.isStreamingValid(memberId);

			// 이용권이 없으면
			if (isPlayerValid == 0) {
				// 다시 재생버튼을 클릭한 곳으로 보내기
				// 팝업창을 띄우면서 이용권 구매 유도 할 예정!
				return "redirect:/index.jsp";
			}

			// 이용권이 있으면
			else {
				// Playlist, Playlist_music, Album, Music 조인한 결과 가져오기
				List<PlaylistMusicVO> playlist = playlistDAO.getPlaylist(memberId);
				// System.out.println(playlist.get(0).getAlbum_art());
				/*
				 * // music_number만 number로 값을 저장하기 때문에 변환 필요 for(int i=0;
				 * i<playlist.size(); i++){ String
				 * music_number=Integer.toString(playlist.get(i).getMusic_number
				 * ());
				 * 
				 * }
				 */
				String album_art = null;
				for (int i = 0; i < playlist.size(); i++) {
					album_art = playlist.get(0).getAlbum_art();
				}
				/// model.addAttribute("album_art", album_art);
				model.addAttribute("playlist", playlist);
				return "main/player/player";
			}
		}
		else{
			return "redirect:/index.jsp";
		}
	}
	/*
	 * @RequestMapping("main/player.do") public String getPlayer(Model model){
	 * return "main/player/player"; }
	 */
	// 이용권이 없을 때 출력되는 페이지(이용권 구매 유도)

	// 재생 횟수 늘리기
	@RequestMapping("main/player_db.do")
	public String increaseCount(String playlist_music_id) {
		int id = Integer.parseInt(playlist_music_id);
		System.out.println("넘어온 id:" + id);
		playlistDAO.increaseCount(id);

		return "main/player/player_db";
	}

	// 플레이리스트에서 곡 지우고 다시 출력
	@RequestMapping("main/player_delete.do")
	public String deleteMusic(int playlist_music_id) {
		return "main/player/player";
	}
}
