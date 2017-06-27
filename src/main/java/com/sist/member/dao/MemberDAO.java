package com.sist.member.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private MemberMapper mMapper;
	
	public String memberGetPwd(String id){
		return mMapper.memberGetPwd(id);
	}
	
	public MemberVO MemberInfo(String id){
		return mMapper.MemberInfo(id);
	}
	
}
