package com.sist.member.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private MemberMapper mMapper;
	
	public String memberGetPwd(String member_nick){
		return mMapper.memberGetPwd(member_nick);
	}
	
	public int memberIdCheck(String member_nick){
		return mMapper.memberIdCheck(member_nick);
	}
	
	public MemberVO memberAllData(String member_nick){
		return mMapper.memberAllData(member_nick);
	}
}
