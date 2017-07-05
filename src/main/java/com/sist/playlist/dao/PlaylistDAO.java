package com.sist.playlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaylistDAO {
	@Autowired
	private PlaylistMapper pMapper;

	public List<PlaylistMusicVO> getPlaylist(int member_id) {
		// ������ member_id�� ������ ȸ���� playlist_music ���̺��� ������ ��� ��������
		// �÷��̾ ����� ��
		// ���	:	�ٹ���Ʈ, � �ش��ϴ� ����
		// �߰�	:	�� �̸�, ��Ƽ��Ʈ
		// �ϴ�	:	�� ����Ʈ(���� - ��Ƽ��Ʈ)
		return pMapper.getPlaylist(member_id);
	}
	
	// ��Ʈ���� �̿���� ������ �ִ��� Ȯ��(��ȿ : 1, ��ȿ : 0)
	public int isStreamingValid(int member_id){
		return pMapper.isStreamingValid(member_id);
	}
	
	// ������ ���� ��� Ƚ�� �ø���
	public void increaseCount(int playlist_music_id){
		System.out.println("id : "+playlist_music_id);
		pMapper.increaseCount(playlist_music_id);
		System.out.println("����");
	}
}
