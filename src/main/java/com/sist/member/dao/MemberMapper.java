package com.sist.member.dao;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	
	//�α��� ó��
	@Select("SELECT pwd FROM members WHERE id=#{id}")
	public String memberGetPwd(String id);
	
	//�α��� �� ȸ������ ��������
	public MemberVO MemberInfo(String id);
	
}
