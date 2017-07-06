package com.sist.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface QuestionMapper {
	//�������� (�ڱⲨ �� �� �� ���ְ�)
	@Select("SELECT * FROM question WHERE member_id=#{member_id}")
	public List<QuestionVO> questionList(int member_id);
	
	
	//�������뺸�̱�
	@Select("SELECT question_id,question_title,question_content "
			+"FROM question WHERE question_id=#{question_id}")
	public QuestionVO questionContent(int question_id);

	
	
	//�����ϱ�
		@Update("UPDATE question SET "
				+"question_title=#{question_title},question_content=#{question_content} "
				+"WHERE question_id=#{question_id}")
		public void questionUpdate(QuestionVO vo);
}