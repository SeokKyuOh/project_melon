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

		// �α����� ���
		if (member_id != null) {
			
			int memberId=Integer.parseInt(member_id);
			
			// �̿�� ���� Ȯ���ϱ�
			int isPlayerValid = playlistDAO.isStreamingValid(memberId);

			// �̿���� ������
			if (isPlayerValid == 0) {
				// �ٽ� �����ư�� Ŭ���� ������ ������
				// �˾�â�� ���鼭 �̿�� ���� ���� �� ����!
				return "redirect:/index.jsp";
			}

			// �̿���� ������
			else {
				// Playlist, Playlist_music, Album, Music ������ ��� ��������
				List<PlaylistMusicVO> playlist = playlistDAO.getPlaylist(memberId);
				// System.out.println(playlist.get(0).getAlbum_art());
				/*
				 * // music_number�� number�� ���� �����ϱ� ������ ��ȯ �ʿ� for(int i=0;
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
	// �̿���� ���� �� ��µǴ� ������(�̿�� ���� ����)

	// ��� Ƚ�� �ø���
	@RequestMapping("main/player_db.do")
	public String increaseCount(String playlist_music_id) {
		int id = Integer.parseInt(playlist_music_id);
		System.out.println("�Ѿ�� id:" + id);
		playlistDAO.increaseCount(id);

		return "main/player/player_db";
	}

	// �÷��̸���Ʈ���� �� ����� �ٽ� ���
	@RequestMapping("main/player_delete.do")
	public String deleteMusic(int playlist_music_id) {
		return "main/player/player";
	}
}
