package com.sist.board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDAO {

	@Autowired
	private QuestionMapper qMapper;
	
	
	//��������Ʈ
	public List<QuestionVO> questionList(int member_id){
		return qMapper.questionList(member_id);
		
	}
	
	//�������뺸�̱�
	public QuestionVO questionContent(int question_id){
		
		return qMapper.questionContent(question_id);
	}
	
	//�ۼ���
	public void questionUpdate(QuestionVO vo){
		qMapper.questionUpdate(vo);
		
	}
	
	//insert
	public void questionInsert(QuestionVO vo){
		qMapper.questionInsert(vo);
	}
}
