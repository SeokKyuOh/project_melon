package com.sist.search.dao;

import org.apache.ibatis.annotations.Select;

import com.sist.playlist.dao.MusicVO;

public interface SearchMapper {
	//��Ƽ��Ʈ �˻�
	@Select("SELECT m.music_name, m.music_artist, a.album_name "
			+ "from music m, album a "
			+ "where m.album_id = a.album_id and m.music_artist LIKE '%'||#{search}||'%' or m.music_name LIKE '%'||#{search}||'%'")
	public MusicVO artistData(String music_search);
		
	//�� �˻�
	@Select("SELECT m.music_name, m.music_artist, a.album_name "
			+ "from music m, album a where m.album_id = a.album_id and m.music_name LIKE '%'||#{search}||'%'")
	public MusicVO songData(String music_search);
	
	//�ٹ� �˻�
	
}
