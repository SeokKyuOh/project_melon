package com.sist.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface BoardMapper {
	
	
	//공지사항 뿌려줘 (boardType_id 가 1 인것 )
	@Select("SELECT * FROM board WHERE boardType_id=#{boardType_id}")
	public List<BoardVO> boardList(int boardType_id);
	
	
	@Select("SELECT board_id,board_writer,board_title,board_content,board_regdate,board_hit "
			+"FROM board WHERE board_id=#{board_id}")
	public BoardVO boardContent(int board_id);

	//상세내용 보기
		@Update("UPDATE board SET board_hit=board_hit+1 WHERE board_id=#{board_id}")
		public void boardHitIncrement(int board_id);	
		
	//수정하기
	@Update("UPDATE board SET "
			+"board_id=#{board_id},board_writer=#{board_writer},"
			+"board_title=#{board_title},board_content=#{board_content},"
			
			+"WHERE board_id=#{board_id}")
	public BoardVO boardUpdate(int board_id);
	//UPDATE board SET board_id=3,board_writer='무내지',board_title='작성글',board_content='내용',board_regdate='2017-07-04',board_hit='0' where board_id=1;

	
	  @Select("SELECT board_filename,board_filesize,board_filecount "
		  		+ "FROM board "
		  		+ "WHERE board_id=#{board_id}")
		  public BoardVO boardGetFileInfo(int board_id);
	
	  @Insert("INSERT INTO Board VALUES("
				 +"board_seq.nextval,#{question_id},#{boardType_id},#{board_writer},#{board_title},"
				 +"#{board_content},SYSDATE,0,"
				 +"#{board_filename},#{board_filesize},#{board_filecount})")
		  public void boardInsert(BoardVO vo);
		  
		  //삭제하기
		  @Delete("DELETE FROM Board "
		  		+ "WHERE board_id=#{board_id}")
		  public void boardDelete(int board_id);
	
}
