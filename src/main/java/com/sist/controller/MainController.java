package com.sist.controller;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.board.dao.QuestionDAO;
import com.sist.board.dao.QuestionVO;
import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;
import com.sist.genre.GenreService;
import com.sist.genre.GenreVO;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;
import com.sist.playlist.dao.MusicVO;
import com.sist.ticket.dao.Buy_downloadVO;
import com.sist.ticket.dao.Buy_streamingVO;

@Controller
public class MainController {
<<<<<<< HEAD
	@Autowired
	private ChartService service;	
	
	@Autowired									//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
	private GenreService genreservice;	//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
	
	@Autowired
	MemberDAO dao;

	@Autowired
	QuestionDAO qdao;
	
	List<Daily_ChartVO> daily_list;		// ��� ��Ʈ���� ������ �߰� (7/6 ������)
	
	@RequestMapping("main/main.do")
	public String main_page(Model model){
		//�ǽð� ��Ʈ �ҷ�����
		daily_list=service.Daily_ChartData();
		List<GenreVO> album_main =genreservice.genreAlbumData(1);				//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
		
		//���� ���� �ҷ�����
		String [] mv ={
				"twice_signal",
                "minzy_ninano", 
                "ftisland_wind",
                "Lovelyz",
                "hyukoh_tomboy",
                "50cent"
        };
		String [] mvid = {
				"VQtonf1fv_s",
				"nmZGpBIz_Gg",
				"QhPOwcvhGSA",
				"wMCoQaE0LvQ",
				"pC6tPEaAiYU",
				"5qm8PH4xAss"
		};
		model.addAttribute("mv", mv);
		model.addAttribute("mvid", mvid);		
		model.addAttribute("daily_list", daily_list);
		model.addAttribute("album_main", album_main);									//���� �ٹ� �̹��� ������ �߰� (7/6 ������)
		model.addAttribute("main_jsp","default.jsp");
		return "main/main";
	}
=======

   @Autowired
   private ChartService service;   
   
   @Autowired                           //���� �ٹ� �̹��� ������ �߰� (7/6 ������)
   private GenreService genreservice;   //���� �ٹ� �̹��� ������ �߰� (7/6 ������)
   
   @Autowired
   MemberDAO dao;
 
   @Autowired
   QuestionDAO qdao;
   
   List<Daily_ChartVO> daily_list;      // ��� ��Ʈ���� ������ �߰� (7/6 ������)
   
   @RequestMapping("main/main.do")
   public String main_page(Model model){
      //�ǽð� ��Ʈ �ҷ�����
      daily_list=service.Daily_ChartData();
      List<GenreVO> album_main =genreservice.genreAlbumData(1);            //���� �ٹ� �̹��� ������ �߰� (7/6 ������)
      model.addAttribute("daily_list", daily_list);
      model.addAttribute("album_main", album_main);                           //���� �ٹ� �̹��� ������ �߰� (7/6 ������)
      model.addAttribute("main_jsp","default.jsp");
      return "main/main";
   }
   
   
   /*@RequestMapping("main/buy_ticket.do")
   public String buy_ticket_page(Model model){
      model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");
      return "main/main";
   }*/
 
>>>>>>> aa23b4020ce08b9c5e00de75cc9c07734b6f3f01
 
   @RequestMapping("main/mypage.do")
   public String mypage_page(Model model, String nick, int id){
      model.addAttribute("main_jsp","mypage/mypage.jsp");
      MemberVO vo=dao.memberAllData(nick);
 
      List<QuestionVO> qvo=qdao.questionList(id);
 
      List<Buy_streamingVO> bsvo=dao.mypageStreamingInfo(id);
      List<Buy_downloadVO> bdvo=dao.mypageDownloadInfo(id);
      List<MusicVO> mvo=dao.mypagePlayList(id);
      
      //�̿��-��¥ ���� ����(�ú��� ����)
      for(Buy_streamingVO vo2:bsvo){
         vo2.setBuy_streaming_start(vo2.getBuy_streaming_start().substring(0,10));
         vo2.setBuy_streaming_end(vo2.getBuy_streaming_end().substring(0,10));
      }
      for(Buy_downloadVO vo2:bdvo){
         vo2.setBuy_download_start(vo2.getBuy_download_start().substring(0,10));
         vo2.setBuy_download_end(vo2.getBuy_download_end().substring(0,10));
      }
      model.addAttribute("mvo", mvo);
      model.addAttribute("vo", vo);
      model.addAttribute("qvo",qvo);
      model.addAttribute("bsvo",bsvo);
      model.addAttribute("bdvo",bdvo);
      
      daily_list=service.Daily_ChartData();            // ��� ��Ʈ���� ������ �߰� (7/6 ������)
      model.addAttribute("daily_list", daily_list);      // ��� ��Ʈ���� ������ �߰� (7/6 ������)
      
      return "main/main";
   }
 
   @RequestMapping("main/login.do")
   public String login_page(Model model){
      return "main/member/login";
   }

}
 
<<<<<<< HEAD
=======

>>>>>>> aa23b4020ce08b9c5e00de75cc9c07734b6f3f01
