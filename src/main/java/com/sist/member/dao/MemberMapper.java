package com.sist.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sist.board.dao.QuestionVO;
import com.sist.ticket.dao.Buy_streamingVO;

public interface MemberMapper {
	//비밀번호 확인
	@Select("SELECT member_pwd FROM members WHERE member_nick=#{member_nick}")
	public String memberGetPwd(String member_nick);
	
	//로그인 (중복) 체크 결과값 0=없음, 1=있음
	@Select("SELECT COUNT(*) FROM members WHERE member_nick=#{member_nick}")
	public int memberIdCheck(String member_nick);
	
	/*//로그인정보-yk
	@Select("SELECT member_name, member_nick FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberInfoData(String member_nick);*/
	
	//로그인전체정보-yk
	@Select("SELECT member_id,member_name, member_nick, member_phone, member_email, member_addr, member_nick, member_pwd, member_birthdate,member_gender,member_regdate,member_cash,member_post FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberAllData(String member_nick);
	
	//마이페이지 문의내역 요약정보(타이틀, 작성날짜만)-yk
	@Select("SELECT question_title, question_regdate FROM question,members m where m.member_id=#{member_id}")
	public List<QuestionVO> mypageQuestionSummary(int id);
	
	//마이페이지 구매내역 정보 출력-yk
	@Select("SELECT s.streaming_name, bs.buy_streaming_start, bs.buy_streaming_end FROM buy_streaming bs, streaming s WHERE bs.member_id=#{member_id} and s.streaming_id = bs.streaming_id ORDER BY bs.buy_streaming_start ASC")
	public List<Buy_streamingVO> mypageStreamingInfo(int id);
	
	//회원 정보 수정-yk
	@Update("UPDATE members SET member_pwd=#{member_pwd}, member_email=#{member_email}, member_name=#{member_name}, member_gender=#{member_gender}, member_phone=#{member_phone}, member_birthdate=#{member_birthdate}, member_post=#{member_post}, member_name=#{member_name},WHERE member_id=#{member_id}")
	public void memberUpdate(MemberVO vo);
	
	//주소입력
	@Select("SELECT zipcode,sido,gugun,dong,NVL(bunji, ' ') as bunji FROM zipcode "
			+ "WHERE dong LIKE '%'||#{dong}||'%'")
	public List<ZipcodeVO> zipcodeListData(String dong);
	
	//회원가입 입력
	@Insert("INSERT INTO members VALUES("
			+ "members_seq.nextval, #{member_name}, #{member_phone}, #{member_email}, #{member_addr}, #{member_nick}, #{member_pwd},#{member_birthdate}, #{member_gender}, SYSDATE, 0, #{member_post})")
	public void memberInsert(MemberVO vo);
}
