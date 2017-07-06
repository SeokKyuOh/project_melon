package com.sist.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface QuestionMapper {
	//공지사항 (자기꺼 쓴 거 볼 수있게)
	@Select("SELECT * FROM question WHERE member_id=#{member_id}")
	public List<QuestionVO> questionList(int member_id);
	
	
	//질문내용보이기
	@Select("SELECT question_id,question_title,question_content,question_regdate "
			+"FROM question WHERE question_id=#{question_id}")
	public QuestionVO questionContent(int question_id);

}