package com.sist.playlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
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
	// 회원의 플레이리스트 목록 가져오기(이용권이 있는 경우)
	@Select("select playlist_music_id, p.playlist_id, m.music_number,"
			+"p.member_id,"
			+"m.music_name, m.music_artist, m.music_lyrics,"
			+"a.album_name, a.album_art "
			+"from playlist_music full outer join PLAYLIST p on playlist_music.playlist_id=p.playlist_id "
			+"inner join MUSIC m on playlist_music.music_id=m.music_id "
			+"inner join ALBUM a on m.album_id=a.album_id "
			+"where p.member_id=#{member_id} order by playlist_music.playlist_music_id")
	public List<PlaylistMusicVO> getPlaylist(int member_id);
	
	// 임시 플레이어 구동(비회원 or 회원이지만 이용권이 없는 경우)
	@Select("select album_art, music_lyrics, music_name, music_artist from music inner join ALBUM a on a.ALBUM_ID = music.ALBUM_ID and music_id=#{music_id}")
	public MusicVO getTempList(int music_id);
	
	// playlist 컬럼 만들기
	@SelectKey(keyProperty="playlist_id", resultType=int.class, before=true, statement="select nvl(max(playlist_id)+1, 1) as playlist_music_id from playlist")
	@Insert("insert into playlist(playlist_id, member_id) values(#{playlist_id}, #{member_id})")
	public void makePlaylist(int member_id);
	
	// 앨범 재생을 클릭했을 때 album_id를 가지고 music_id 구하기
	@Select("select music_id from music where album_id=#{album_id} order by music_id")
	public ArrayList<Integer> getMusicId(int album_id);
	
	// member_id를 가지고 playlist_id찾기(없는 경우 null값 return)
	@Select("select playlist_id from playlist where member_id=#{member_id}")
	public String getPlaylistId(int member_id);
	
	// 비회원 or 이용권이 없는 경우 playlist_music을 통해 값을 가져오지 않고 music_id로 가져옴!
	// 1분 미리듣기 구현 or 무료 재생 횟수 제한 걸기(session에 값 넣어놓기)
	// 현재 날짜(재생 버튼을 누를 때 시간)와 이용권 마감기한을 비교하여 유효햐면 1, 무효하면 0 return
	@Select("select count(*) from buy_streaming "
			+ "where buy_streaming_end >= sysdate and member_id=#{member_id}")
	public int isStreamingValid(int member_id);
	
	// 곡 클릭시마다 재생횟수 늘리기
	@Update("update playlist_music set playlist_count=playlist_count+1 where playlist_music_id=#{playlist_music_id}")
	public void increaseCount(int playlist_music_id);
	
	// playlist_music_seq.nextval
	// 곡 선택 후 playlist_music에 저장
	@SelectKey(keyProperty="playlist_music_id", resultType=int.class, before=true, statement="select nvl(max(playlist_music_id)+1, 1) as playlist_music_id from playlist_music")
	@Insert("insert into PLAYLIST_MUSIC (PLAYLIST_MUSIC_ID, PLAYLIST_COUNT, PLAYLIST_ID, MUSIC_ID) VALUES (#{playlist_music_id}, 0, #{playlist_id}, #{music_id})")
	public void insertMusic(PlaylistMusicVO vo);
	
}
