package com.sist.playlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaylistDAO {
	@Autowired
	private PlaylistMapper pMapper;

	public List<PlaylistMusicVO> getPlaylist(int member_id) {
		// 가져온 member_id를 가지고 회원의 playlist_music 테이블을 조인한 결과 가져오기
		// 플레이어에 출력할 값
		// 상단	:	앨범아트, 곡에 해당하는 가사
		// 중간	:	곡 이름, 아티스트
		// 하단	:	곡 리스트(제목 - 아티스트)
		return pMapper.getPlaylist(member_id);
	}
	
	// 스트리밍 이용권을 가지고 있는지 확인(유효 : 1, 무효 : 0)
	public int isStreamingValid(int member_id){
		return pMapper.isStreamingValid(member_id);
	}
	
	// 선택한 곡의 재생 횟수 늘리기
	public void increaseCount(int playlist_music_id){
		System.out.println("id : "+playlist_music_id);
		pMapper.increaseCount(playlist_music_id);
		System.out.println("성공");
	}
}
