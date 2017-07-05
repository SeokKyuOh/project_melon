package com.sist.playlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaylistDAO {
	@Autowired
	private PlaylistMapper pMapper;
	
	// playlist_music 에서 곡 리스트 정보 가져오기
	public List<PlaylistMusicVO> getPlaylist(int member_id) {
		// 가져온 member_id를 가지고 회원의 playlist_music 테이블을 조인한 결과 가져오기
		// 플레이어에 출력할 값
		// 상단 : 앨범아트, 곡에 해당하는 가사
		// 중간 : 곡 이름, 아티스트
		// 하단 : 곡 리스트(제목 - 아티스트)
		System.out.println("getPlaylist");
		return pMapper.getPlaylist(member_id);
	}
	
	// 임시 player구동
	public List<MusicVO> getTempList(int album_id){
		System.out.println("getTempList");
		return pMapper.getTempList(album_id);
	}
	
	// member_id를 가지고 playlist_id찾기(없는 경우 null값 return)
	public String getPlaylistId(int member_id){
		System.out.println("getPlaylistId");
		return pMapper.getPlaylistId(member_id);
	}
	
	// 스트리밍 이용권을 가지고 있는지 확인(유효 : 1, 무효 : 0)
	public int isStreamingValid(int member_id){
		System.out.println("isstreamingValid");
		return pMapper.isStreamingValid(member_id);
	}
	
	// 선택한 곡의 재생 횟수 늘리기
	public void increaseCount(int playlist_music_id){
		System.out.println("id : "+playlist_music_id);
		pMapper.increaseCount(playlist_music_id);
		System.out.println("성공");
	}
	
	// 곡 추가
	public void insertMusic(int playlist_id, int music_id){
		System.out.println("insertMusic");
		System.out.println(playlist_id+", "+music_id);
		
		PlaylistMusicVO vo=new PlaylistMusicVO();
		vo.setMusic_id(music_id);
		vo.setPlaylist_id(playlist_id);
		
		pMapper.insertMusic(vo);
		System.out.println("insert");
	}
}
