package com.sist.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sist.board.dao.QuestionVO;
import com.sist.playlist.dao.MusicVO;
import com.sist.ticket.dao.Buy_downloadVO;
import com.sist.ticket.dao.Buy_streamingVO;

public interface MemberMapper {
	// ��й�ȣ Ȯ��
	@Select("SELECT member_pwd FROM members WHERE member_nick=#{member_nick}")
	public String memberGetPwd(String member_nick);

	// �α��� (�ߺ�) üũ ����� 0=����, 1=����
	@Select("SELECT COUNT(*) FROM members WHERE member_nick=#{member_nick}")
	public int memberIdCheck(String member_nick);

	/*
	 * //�α�������-yk
	 * 
	 * @Select(
	 * "SELECT member_name, member_nick FROM members WHERE member_nick=#{member_nick}"
	 * ) public MemberVO memberInfoData(String member_nick);
	 */

	//�α�����ü����-yk
	@Select("SELECT member_id,member_name, member_nick, member_phone, member_email, member_addr, member_nick, member_pwd, TO_CHAR(member_birthdate,'yyyy-MM-dd') as member_birthdate,member_gender,member_regdate,member_cash,member_post FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberAllData(String member_nick);
	
	//���������� ���ǳ��� �������(Ÿ��Ʋ, �ۼ���¥��)-yk
	@Select("SELECT question_title, TO_CHAR(question_regdate,'yyyy-MM-dd') as question_regdate FROM question q WHERE q.member_id=#{member_id}")
	public List<QuestionVO> mypageQuestionSummary(int id);
	
	//���������� ���ų��� ���� ���(��Ʈ����)-yk
	@Select("SELECT s.streaming_name, TO_CHAR(bs.buy_streaming_start, 'yyyy-MM-dd') as buy_streaming_start, TO_CHAR(bs.buy_streaming_end, 'yyyy-MM-dd') as buy_streaming_end FROM buy_streaming bs, streaming s WHERE bs.member_id=#{member_id} and s.streaming_id = bs.streaming_id ORDER BY bs.buy_streaming_start ASC")
	public List<Buy_streamingVO> mypageStreamingInfo(int id);
	
	//���������� ���ų��� ���� ���(�ٿ�ε�)-yk
	@Select("SELECT d.download_name, TO_CHAR(bd.buy_download_start,'yyyy-MM-dd') as buy_download_start, TO_CHAR(bd.buy_download_end,'yyyy-MM-dd') as buy_download_end FROM buy_download bd, download d WHERE bd.member_id=#{member_id} and d.download_id = bd.download_id ORDER BY bd.buy_download_start ASC")
	public List<Buy_downloadVO> mypageDownloadInfo(int id);
	
	//���������� �÷��̸���Ʈ ���� ���-yk
	@Select("SELECT m.music_name, m.music_artist, p.member_id, pm.playlist_music_id FROM playlist_music pm, music m, playlist p WHERE p.member_id=#{member_id} and pm.music_id=m.music_id and pm.playlist_id=p.playlist_id ORDER BY pm.playlist_music_id")
	public List<MusicVO> mypagePlayList(int id);
	
	//ȸ�� ���� ����(������Ʈ)-yk
	@Update("UPDATE members SET member_pwd=#{member_pwd}, member_email=#{member_email}, member_name=#{member_name}, member_gender=#{member_gender}, member_phone=#{member_phone}, member_birthdate=#{member_birthdate}, member_post=#{member_post}, member_addr=#{member_addr} WHERE member_id=#{member_id}")
	public void memberUpdate(MemberVO vo);
			
	//�������������� �� �÷��̸���Ʈ �� �ϳ� ����-yk
	@Delete("DELETE FROM playlist_music WHERE playlist_music_id=#{playlist_music_id}")
	public void myPlaylistDelete(int playlist_music_id);
	
	// �ּ��Է�
	@Select("SELECT zipcode,sido,gugun,dong,NVL(bunji, ' ') as bunji FROM zipcode "
			+ "WHERE dong LIKE '%'||#{dong}||'%'")
	public List<ZipcodeVO> zipcodeListData(String dong);

	// ȸ������ �Է�
	@Insert("INSERT INTO members VALUES("
				+ "members_seq.nextval, #{member_name}, #{member_phone}, #{member_email}, #{member_addr}, #{member_nick}, #{member_pwd},#{member_birthdate}, #{member_gender}, SYSDATE, 0, #{member_post})")
	public void memberInsert(MemberVO vo);
}
