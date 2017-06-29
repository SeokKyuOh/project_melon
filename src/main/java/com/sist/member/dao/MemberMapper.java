package com.sist.member.dao;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	//��й�ȣ Ȯ��
	@Select("SELECT member_pwd FROM members WHERE member_nick=#{member_nick}")
	public String memberGetPwd(String member_nick);
	
	//�α��� (�ߺ�) üũ
	@Select("SELECT COUNT(*) FROM members WHERE member_nick=#{member_nick}")
	public int memberIdCheck(String member_nick);
	
	/*//�α�������
	@Select("SELECT member_name, member_nick FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberInfoData(String member_nick);*/
	
	//�α�����ü����
		@Select("SELECT member_id,member_name, member_nick, member_phone, member_email, member_addr, member_nick, member_pwd, member_birthdate,member_gender,member_regdate,member_cash,member_post FROM members WHERE member_nick=#{member_nick}")
		public MemberVO memberAllData(String member_nick);
	
}
