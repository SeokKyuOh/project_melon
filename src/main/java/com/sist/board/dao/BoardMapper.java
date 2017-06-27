package com.sist.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface BoardMapper {
	
	
	//공지사항 뿌려줘 (boardType_id 가 1 인것 )
	@Select("SELECT * FROM board WHERE boardType_id=#{boardType_id}")
	public List<BoardVO> boardList(int boardType_id);
	
	//상세내용 보기
	@Update("UPDATE board SET board_hit=board_hit+1 WHERE board_id=#{board_id}")
	public void boardHitIncrement(int board_id);	
	
	@Select("SELECT board_id,board_writer,board_title,board_content,board_regdate,board_hit "
			+"FROM board WHERE board_id=#{board_id}")
	public BoardVO boardContent(int board_id);

	
	//수정 
	@Update("UPDATE board SET "
			+"board_id=#{board_id},board_writer=#{board_writer},"
			+"board_title=#{board_title},board_content=#{board_content},"
			+"board_regdate=#{board_regdate},board_hit=#{board_hit} "
			+"WHERE board_id=#{board_id}")
	public void boardUpdate(BoardVO vo);
	

	
}
