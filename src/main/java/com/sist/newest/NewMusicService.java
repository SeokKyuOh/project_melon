package com.sist.newest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sist.chart.Daily_ChartMapper;
import com.sist.chart.Daily_ChartVO;

@Service
public class NewMusicService {
	@Autowired
	private NewMusicMapper nMapper;

	@Autowired 
	private NewAlbumMapper aMapper;
	
	public List<NewMusicVO> NewMusicData()
	{
		return nMapper.NewMusicData();
	}
	
	
	public List<NewAlbumVO> NewAlbumData()
	{
		return aMapper.NewAlbumData();
	}
	

	
	
	
	
}
