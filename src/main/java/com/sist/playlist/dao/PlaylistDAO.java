package com.sist.playlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaylistDAO {
	@Autowired
	private PlaylistMapper pMapper;
	
	// playlist_music ���� �� ����Ʈ ���� ��������
	public List<PlaylistMusicVO> getPlaylist(int member_id) {
		// ������ member_id�� ������ ȸ���� playlist_music ���̺��� ������ ��� ��������
		// �÷��̾ ����� ��
		// ��� : �ٹ���Ʈ, � �ش��ϴ� ����
		// �߰� : �� �̸�, ��Ƽ��Ʈ
		// �ϴ� : �� ����Ʈ(���� - ��Ƽ��Ʈ)
		System.out.println("getPlaylist");
		return pMapper.getPlaylist(member_id);
	}
	
	// �ӽ� player����
	public List<MusicVO> getTempList(int album_id){
		System.out.println("getTempList");
		return pMapper.getTempList(album_id);
	}
	
	// member_id�� ������ playlist_idã��(���� ��� null�� return)
	public String getPlaylistId(int member_id){
		System.out.println("getPlaylistId");
		return pMapper.getPlaylistId(member_id);
	}
	
	// ��Ʈ���� �̿���� ������ �ִ��� Ȯ��(��ȿ : 1, ��ȿ : 0)
	public int isStreamingValid(int member_id){
		System.out.println("isstreamingValid");
		return pMapper.isStreamingValid(member_id);
	}
	
	// ������ ���� ��� Ƚ�� �ø���
	public void increaseCount(int playlist_music_id){
		System.out.println("id : "+playlist_music_id);
		pMapper.increaseCount(playlist_music_id);
		System.out.println("����");
	}
	
	// �� �߰�
	public void insertMusic(int playlist_id, int music_id){
		System.out.println("insertMusic");
		System.out.println(playlist_id+", "+music_id);
		
		PlaylistMusicVO vo=new PlaylistMusicVO();
		vo.setMusic_id(music_id);
		vo.setPlaylist_id(playlist_id);
		
		pMapper.insertMusic(vo);
		System.out.println("insert");
	}
}
