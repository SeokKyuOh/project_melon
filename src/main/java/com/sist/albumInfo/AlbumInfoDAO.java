package com.sist.albumInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AlbumInfoDAO {
	@Autowired
	private AlbumInfoMapper aiMapper;
	
	public AlbumInfoVO albumInfo(int album_id){
		System.out.println("앨범아이디는 :"+album_id);
		return aiMapper.AlbumInfo(album_id);
		
	}
}
