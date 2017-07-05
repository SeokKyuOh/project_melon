package com.sist.ticket.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

public interface DownloadMapper {
	@Select("select * from download")
	public List<DownloadVO> download_list();
	
	@Select("select * from download where download_id=#{download_id}")
	public DownloadVO select_one_download(int download_id);
	
	@SelectKey(keyProperty="buy_download_id", resultType=int.class, before=true, statement="SELECT NVL(MAX(buy_download_id)+1,1) as buy_download_id FROM buy_download")
	@Insert("insert into buy_download values(#{buy_download_id}, TO_DATE(#{buy_download_start}, 'yyyy/mm/dd hh24:mi:ss'), TO_DATE(#{buy_download_end}, 'yyyy/mm/dd hh24:mi:ss'), sysdate, #{download_qt}, #{download_id}, #{member_id})")
	public void insert_buy_download(Buy_downloadVO vo);
}
