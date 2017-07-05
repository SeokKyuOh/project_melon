package com.sist.search.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.playlist.dao.MusicVO;

public interface SearchMapper {
	//아티스트 검색
	@Select("SELECT m.music_name, m.music_artist, a.album_name "
			+ "from music m, album a "
			+ "where m.album_id = a.album_id and m.music_artist LIKE '%'||#{search}||'%'")
	public List<MusicVO> artistData(String music_search);
		
	//곡 검색
	@Select("SELECT m.music_name, m.music_artist, a.album_name "
			+ "from music m, album a where m.album_id = a.album_id and m.music_name LIKE '%'||#{search}||'%'")
	public List<MusicVO> songData(String music_search);
	
	//앨범 검색
	
}
