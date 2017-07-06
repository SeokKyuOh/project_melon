package com.sist.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sist.member.dao.MemberVO;
import com.sist.playlist.dao.MusicVO;
import com.sist.playlist.dao.PlaylistDAO;
import com.sist.playlist.dao.PlaylistMusicVO;

@Controller
public class PlayerController {

	@Autowired
	private PlaylistDAO playlistDAO;
	
	// �÷��̾� ����(�̿�� ���� ��)
	@RequestMapping("main/player.do")
	public String getPlaylist(HttpSession session, Model model) {
		MemberVO vo=(MemberVO)session.getAttribute("membervo");
		int member_id=vo.getMember_id();
		
		System.out.println("member_id"+member_id);
		
		// Playlist, Playlist_music, Album, Music join
		List<PlaylistMusicVO> playlist = playlistDAO.getPlaylist(member_id);
		
		model.addAttribute("playlist", playlist);
		return "/main/player/player";
		
	}
	
	// ��� ��ư�� �����ų� ���� ���� �� ���� ���� �����!!!
	// �� ���� ���� �� ����Ǵ� �κ�
	// playlist_music�� ���� ��� ���� playlist_id��������
	// String member_id, ArrayList<Integer> musics, Model model
	@RequestMapping("main/player_playlist_id.do")
	public String getPlaylistId(@RequestParam("member_id") int member_id, @RequestParam("musics") ArrayList<Integer> musics, Model model){
		//System.out.println("member_id : "+member_id+"\n");
		//System.out.println("musics : "+musics+"\n");

		// ȸ���� ���
		if (member_id != 0) {
					
			String playlist_id=playlistDAO.getPlaylistId(member_id);
			int playlistId=Integer.parseInt(playlist_id);
			System.out.println("playlist_id : "+playlist_id);
			
			// �̿�� ����
			int isPlayerValid = playlistDAO.isStreamingValid(member_id);
			System.out.println("isPlayerValid : "+isPlayerValid);
			
			// ���� playlist_id�� ����, �̿���� ��ȿ�� ��� 
			if(playlist_id==null && isPlayerValid>0){
				// playlist column ����
				playlistDAO.makePlaylist(member_id);
				
				// playlist_id�� music_id list �ѱ��
				model.addAttribute("musics", musics);
				return "redirect:/main/player_insert.do";
			}
			
			// ���� playlist_id�� �ְ� �̿���� ��ȿ�� ���
			// playlist_id�� music_id list�� �ѱ�� playlist_music�� �� ���� ����
			else if(playlist_id!=null && isPlayerValid>0){
				System.out.println("���� playlist_id�� �ְ� �̿���� ��ȿ�� ���");
				System.out.println(musics);
				model.addAttribute("musics", musics);
				model.addAttribute("playlist_id", playlistId);
				
				return "redirect:/main/player_insert.do";
			}
			
			// ���� playlist_id�� ���� �̿���� ��ȿ�� ���
			else if(playlist_id==null && isPlayerValid==0){
				// �̿���� ��ȿ�ϹǷ� playlist column�� ������ �ʿ䰡 ����!
				// �׳� ����� ����...�̿�� �������� ����
				model.addAttribute("musics", musics);
				return "redirect:/main/player_temp.do";
				//return "main/player/buy_ticket";
			}
			
			// ���� playlist_id�� �ְ� �̿���� ��ȿ�� ���
			else{
				// �׳� ����� ����...�̿�� �������� ����
				model.addAttribute("musics", musics);
				return "redirect:/main/player_temp.do";
				//return "main/player/buy_ticket";
			}
		}
		
		// ȸ���� �ƴ� ��� 
		else{
			System.out.println("ȸ���� �ƴ� ���");
			System.out.println(musics);
			model.addAttribute("musics", musics);
			return "redirect:/main/player_temp.do";
		}
	}
	
	// album_id�� �̿��� music_id��������(�ٹ� ���)
	@RequestMapping("main/player_temp_db.do")
	public String getMusicId(int album_id, Model model){
		ArrayList<Integer> musics=playlistDAO.getMusicId(album_id);
		model.addAttribute("musics", musics);
		return "redirect:main/player_playlist_temp.do";
	}
	

	// music_id�� �̿��� temp player �����
	// �÷��̾� ����(ȸ���� �ƴϰų� �̿�� ���� ��) -> music_id�� �޾� ����ϱ�(join�� player.do�� �����ϰ�!)
	@RequestMapping("main/player_temp.do")
	public String openTempPlayer(@RequestParam("musics") ArrayList<Integer> musics, Model model){
		List<MusicVO> playlist=new ArrayList<MusicVO>();
		int music_id=0;
		for(int i=0; i<musics.size(); i++){
			music_id=musics.get(i);
			MusicVO vo=playlistDAO.getTempList(music_id);
			playlist.add(vo);
		}
		model.addAttribute("playlist", playlist);
		return "main/player/player_temp";
	}
	
	/*
	 * @RequestMapping("main/player.do") public String getPlayer(Model model){
	 * return "main/player/player"; }
	 */
	// �̿���� ���� �� ��µǴ� ������(�̿�� ���� ����)

	// playlist ���̺� column �߰�(������ playlist_music�� ����� ���)
	
	
	// ��� Ƚ�� �ø���
	@RequestMapping("main/player_count.do")
	public String increaseCount(int playlist_music_id) {
		//int id = Integer.parseInt(playlist_music_id);
		System.out.println("playlist_music id:" + playlist_music_id);
		playlistDAO.increaseCount(playlist_music_id);

		return "main/player/player";
	}
	
	// playlist_music�� �� �߰� �� ���
	@RequestMapping("main/player_insert.do")
	public String insertMusic(int playlist_id, @RequestParam("musics") ArrayList<Integer> musics){
		try{
		for(int i=0; i<musics.size(); i++){
			System.out.println("musics : "+musics.get(i)+"\n");
		}
		int music_id;
		for(int i=0; i<musics.size(); i++){
			music_id=musics.get(i);
			playlistDAO.insertMusic(playlist_id, music_id);
		}
		
		System.out.println("���Ծ�");
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
		return "main/player/player_index";
	}

	// ���� ���� ����
	// �÷��̸���Ʈ���� �� ����� �ٽ� ���
	@RequestMapping("main/player_delete.do")
	public String deleteMusic(int playlist_music_id) {
		return "main/player/player";
	}
}
