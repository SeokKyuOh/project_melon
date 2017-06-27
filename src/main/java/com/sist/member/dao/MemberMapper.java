package com.sist.member.dao;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	
	//로그인 처리
	@Select("SELECT pwd FROM members WHERE id=#{id}")
	public String memberGetPwd(String id);
	
	//로그인 후 회원정보 가져오기
	public MemberVO MemberInfo(String id);
	
}
