package com.sist.member.dao;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	//비밀번호 확인
	@Select("SELECT member_pwd FROM members WHERE member_nick=#{member_nick}")
	public String memberGetPwd(String member_nick);
	
	//로그인 (중복) 체크
	@Select("SELECT COUNT(*) FROM members WHERE member_nick=#{member_nick}")
	public int memberIdCheck(String member_nick);
	
	/*//로그인정보
	@Select("SELECT member_name, member_nick FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberInfoData(String member_nick);*/
	
	//로그인전체정보
		@Select("SELECT member_id,member_name, member_nick, member_phone, member_email, member_addr, member_nick, member_pwd, member_birthdate,member_gender,member_regdate,member_cash,member_post FROM members WHERE member_nick=#{member_nick}")
		public MemberVO memberAllData(String member_nick);
	
}
