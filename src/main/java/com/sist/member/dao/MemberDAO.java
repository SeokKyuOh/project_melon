package com.sist.member.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.board.dao.QuestionVO;

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
	
	public List<QuestionVO> mypageQuestionSummary(int id){
		return mMapper.mypageQuestionSummary(id);
	}
	
	
}
