package com.sist.chart;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;



public interface Daily_ChartMapper {
/*	  @Select("SELECT music.music_name, music.music_artist, music.music_id, music.album_id "
				+"FROM music")
public List<Daily_ChartVO> Daily_ChartData();
;*/
@Select("SELECT M.music_id,M.music_number,M.album_id,M.music_name,M.music_artist,A.album_name ,A.album_id,A.album_art "
			+"FROM music M "
			+"INNER JOIN album A "
			+"ON M.album_id = A.album_id")	
public List<Daily_ChartVO> Daily_ChartData();
}
