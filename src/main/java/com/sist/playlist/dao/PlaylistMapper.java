package com.sist.playlist.dao;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface PlaylistMapper {
	// Playlist와 Playlist_music 테이블 inner join
	// 플레이리스트를 가진 회원 id, music_id를 가져오기 위한 작업 -> 플레이리스트 목록
	// 앨범아트 가져오기
	// 클릭한 곡의 music_id를 이용하여 music과 album 테이블 inner join
	// playlist, playlist_music, music, album을 한꺼번에 join!
	/*
		select playlist_music_id, p.playlist_id, m.music_id, 
		p.member_id,
		m.music_name, m.music_artist, m.music_lyrics,
		a.album_name, a.album_art
		from playlist_music full outer join PLAYLIST p on playlist_music.playlist_id=p.playlist_id 
		inner join MUSIC m on playlist_music.music_id=m.music_id inner join ALBUM a on m.album_id=a.album_id;
	*/
	// 회원의 플레이리스트 목록 가져오기
/*
	@Results( //Results가 Select 바로 위에 있으면 조인을 의미
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
			+"where p.member_id=#{member_id} order by playlist_music.MUSIC_ID")
	public List<PlaylistMusicVO> getPlaylist(int member_id);
	
	// 비회원 or 이용권이 없는 경우 playlist_music을 통해 값을 가져오지 않고 music_id로 가져옴!(1곡만 재생됨)
	// 1분 미리듣기 구현 or 무료 재생 횟수 제한 걸기(session에 값 넣어놓기)
	// 현재 날짜(재생 버튼을 누를 때 시간)와 이용권 마감기한을 비교하여 유효햐면 1, 무효하면 0 return
	@Select("select count(*) from buy_streaming "
			+ "where buy_streaming_end >= sysdate and member_id=#{member_id}")
	public int isStreamingValid(int member_id);
	
	// 곡 클릭시마다 재생횟수 늘리기
	@Update("update playlist_music set playlist_count=playlist_count+1 where playlist_music_id=#{playlist_music_id}")
	public void increaseCount(int playlist_music_id);
	
}
