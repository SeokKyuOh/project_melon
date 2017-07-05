package com.sist.search.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.playlist.dao.MusicVO;

@Repository
public class SearchDAO {
	@Autowired
	private SearchMapper sMapper;
	
	public MusicVO artistData(String music_search){
		return sMapper.artistData(music_search);
	}
	
	public MusicVO songData(String music_search){
		return sMapper.songData(music_search);
	}
}
