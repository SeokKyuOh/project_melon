package com.sist.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.sist.board.dao.QuestionVO;

public interface MemberMapper {
	//��й�ȣ Ȯ��
	@Select("SELECT member_pwd FROM members WHERE member_nick=#{member_nick}")
	public String memberGetPwd(String member_nick);
	
	//�α��� (�ߺ�) üũ ����� 0=����, 1=����
	@Select("SELECT COUNT(*) FROM members WHERE member_nick=#{member_nick}")
	public int memberIdCheck(String member_nick);
	
	/*//�α�������
	@Select("SELECT member_name, member_nick FROM members WHERE member_nick=#{member_nick}")
	public MemberVO memberInfoData(String member_nick);*/
	
	//�α�����ü����
		@Select("SELECT member_id,member_name, member_nick, member_phone, member_email, member_addr, member_nick, member_pwd, member_birthdate,member_gender,member_regdate,member_cash,member_post FROM members WHERE member_nick=#{member_nick}")
		public MemberVO memberAllData(String member_nick);
	
	//���������� ���ǳ��� �������(Ÿ��Ʋ, �ۼ���¥��)
	@Select("SELECT question_title, question_regdate from question,members m where m.member_id=#{member_id}")
	public List<QuestionVO> mypageQuestionSummary(int id);
	//�ּ��Է�
	@Select("SELECT zipcode,sido,gugun,dong,NVL(bunji, ' ') as bunji FROM zipcode "
			+ "WHERE dong LIKE '%'||#{dong}||'%'")
	public List<ZipcodeVO> zipcodeListData(String dong);
	
	//ȸ������ �Է�	(������ ��������)
	@Insert("INSERT INTO members VALUES("
			+ "members_seq.nextval, #{member_name}, #{member_phone}, #{member_email}, #{member_addr}, #{member_nick}, #{member_pwd},#{member_birthdate}, #{member_gender}, SYSDATE, 0, #{member_post})")
	public void memberInsert(MemberVO vo);
}
