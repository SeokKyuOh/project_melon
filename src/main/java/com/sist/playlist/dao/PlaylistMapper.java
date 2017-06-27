package com.sist.playlist.dao;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

public interface PlaylistMapper {
	// Playlist�� Playlist_music ���̺� inner join
	// �÷��̸���Ʈ�� ���� ȸ�� id, music_id�� �������� ���� �۾� -> �÷��̸���Ʈ ���
	// �ٹ���Ʈ ��������
	// Ŭ���� ���� music_id�� �̿��Ͽ� music�� album ���̺� inner join
	// playlist, playlist_music, music, album�� �Ѳ����� join!
	/*
		select playlist_music_id, p.playlist_id, m.music_id, 
		p.member_id,
		m.music_name, m.music_artist, m.music_lyrics,
		a.album_name, a.album_art
		from playlist_music full outer join PLAYLIST p on playlist_music.playlist_id=p.playlist_id 
		inner join MUSIC m on playlist_music.music_id=m.music_id inner join ALBUM a on m.album_id=a.album_id;
	*/
	// ȸ���� �÷��̸���Ʈ ��� ��������
/*
	@Results( //Results�� Select �ٷ� ���� ������ ������ �ǹ�
			{
			@Result(property="playlist_music_id", column="playlist_music_id"),
			@Result(property="playlist_id", column="playlist_id"),
			@Result(property="music_number", column="music_number"),
			@Result(property="member_id", column="member_id"),
			@Result(property="music_name", column="music_name"),
			@Result(property="music_artist", column="music_artist"),
			@Result(property="music_lyrics", column="music_lyrics"),
			@Result(property="album_name", column="album_name")
			}
	)

*/
	@Select("select playlist_music_id, p.playlist_id, m.music_number,"
			+"p.member_id,"
			+"m.music_name, m.music_artist, m.music_lyrics,"
			+"a.album_name, a.album_art "
			+"from playlist_music full outer join PLAYLIST p on playlist_music.playlist_id=p.playlist_id "
			+"inner join MUSIC m on playlist_music.music_id=m.music_id "
			+"inner join ALBUM a on m.album_id=a.album_id "
			+"where p.member_id=#{member_id}")
	public List<PlaylistMusicVO> getPlaylist(int member_id);
}
