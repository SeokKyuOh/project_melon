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
	
}
