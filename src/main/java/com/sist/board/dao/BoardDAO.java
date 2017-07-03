package com.sist.board.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	private BoardMapper boardMapper;
	
	//���� �������� �� ���ִ� �Խ���
	//boardType_id �� 1�� ������ �������� 
	public List<BoardVO> boardList(int boardType_id){
		return boardMapper.boardList(boardType_id);
		
	}
	
	public BoardVO boardContent(int board_id){
		boardMapper.boardHitIncrement(board_id);
		return boardMapper.boardContent(board_id);
		
	}
	
	public BoardVO boardUpdate(int board_id){
		return boardMapper.boardUpdate(board_id);
		
	}

	
	//insert
	public void boardInsert(BoardVO vo){
		boardMapper.boardInsert(vo);
	}
	//delete
	public void boardDelete(int board_id){
		
		boardMapper.boardDelete(board_id);
	}
}
