package com.sist.member.dao;

import java.util.List;

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
	
	public List<ZipcodeVO> zipcodeListData(String dong){
		return mMapper.zipcodeListData(dong);
	}
	
	public void memberInsert(MemberVO vo){
		mMapper.memberInsert(vo);
		
	}
	
	public MemberVO mypageQuestionSummary(String member_nick){
		return mMapper.mypageQuestionSummary(member_nick);
	}
	
	
}
