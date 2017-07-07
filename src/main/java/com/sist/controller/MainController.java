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
=======

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
   @Autowired
   private ChartService service;   
   
   @Autowired                           //메인 앨범 이미지 때문에 추가 (7/6 오석규)
   private GenreService genreservice;   //메인 앨범 이미지 때문에 추가 (7/6 오석규)
   
   @Autowired
   MemberDAO dao;

   @Autowired
   QuestionDAO qdao;


   @RequestMapping("main/chart.do")
   public String chart_page(Model model) {
      model.addAttribute("main_jsp", "chart/chart.jsp");
      return "main/main";
   }

   @RequestMapping("main/new.do")
   public String new_page(Model model) {
      model.addAttribute("main_jsp", "new/new.jsp");
      return "main/main";
   }

   @RequestMapping("main/genre.do")
   public String ganre_page(Model model) {
      model.addAttribute("main_jsp", "genre/genre.jsp");
      return "main/main";
   }

   /*
    * @RequestMapping("main/buy_ticket.do") public String buy_ticket_page(Model
    * model){ model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");
    * return "main/main"; }
    */

   /*
    * @RequestMapping("main/notice.do") public String notice_page(Model model){
    * model.addAttribute("main_jsp","board/board_list.jsp"); return
    * "main/main"; }
    */
   

   
   List<Daily_ChartVO> daily_list;      // 상단 차트순위 때문에 추가 (7/6 오석규)
   
   @RequestMapping("main/main.do")
   public String main_page(Model model){
      //실시간 차트 불러오기
      daily_list=service.Daily_ChartData();
      List<GenreVO> album_main =genreservice.genreAlbumData(1);            //메인 앨범 이미지 때문에 추가 (7/6 오석규)
      model.addAttribute("daily_list", daily_list);
      model.addAttribute("album_main", album_main);                           //메인 앨범 이미지 때문에 추가 (7/6 오석규)
      model.addAttribute("main_jsp","default.jsp");
      return "main/main";
   }
   
   
   /*@RequestMapping("main/buy_ticket.do")
   public String buy_ticket_page(Model model){
      model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");
      return "main/main";
   }*/

=======
>>>>>>> 7345ee227f99252cabf2acf84ff15494b1af1a0f
>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
>>>>>>> fc507dbc8a0aa07f43cffa7ad3a3169b6e7d86fc
	@Autowired

	private ChartService service;	

<<<<<<< HEAD
=======
	

>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
	@Autowired									//메인 앨범 이미지 때문에 추가 (7/6 오석규)

	private GenreService genreservice;	//메인 앨범 이미지 때문에 추가 (7/6 오석규)
<<<<<<< HEAD

	@Autowired
	MemberDAO dao;

	@Autowired
	QuestionDAO qdao;

	List<Daily_ChartVO> daily_list;		// 상단 차트순위 때문에 추가 (7/6 오석규)

=======

	

	@Autowired

	MemberDAO dao;

 

	@Autowired

	QuestionDAO qdao;

	

	List<Daily_ChartVO> daily_list;		// 상단 차트순위 때문에 추가 (7/6 오석규)

	

>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
	@RequestMapping("main/main.do")

	public String main_page(Model model){

		//실시간 차트 불러오기

		daily_list=service.Daily_ChartData();

		List<GenreVO> album_main =genreservice.genreAlbumData(1);				//메인 앨범 이미지 때문에 추가 (7/6 오석규)

		model.addAttribute("daily_list", daily_list);

		model.addAttribute("album_main", album_main);									//메인 앨범 이미지 때문에 추가 (7/6 오석규)

		model.addAttribute("main_jsp","default.jsp");

		return "main/main";

	}

<<<<<<< HEAD
=======
	

	

>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
	/*@RequestMapping("main/buy_ticket.do")

	public String buy_ticket_page(Model model){

		model.addAttribute("main_jsp","buy_ticket/buy_ticket.jsp");

		return "main/main";

	}*/

 

<<<<<<< HEAD
=======
 

>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
   @RequestMapping("main/mypage.do")

   public String mypage_page(Model model, String nick, int id){

      model.addAttribute("main_jsp","mypage/mypage.jsp");

      MemberVO vo=dao.memberAllData(nick);

 

 

      List<QuestionVO> qvo=qdao.questionList(id);

 

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
 
      List<QuestionVO> qvo=qdao.questionList(id);
 
>>>>>>> 7345ee227f99252cabf2acf84ff15494b1af1a0f
>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
>>>>>>> fc507dbc8a0aa07f43cffa7ad3a3169b6e7d86fc
      List<Buy_streamingVO> bsvo=dao.mypageStreamingInfo(id);

      List<Buy_downloadVO> bdvo=dao.mypageDownloadInfo(id);

      List<MusicVO> mvo=dao.mypagePlayList(id);

      

      //이용권-날짜 형식 변경(시분초 제거)

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

      
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
>>>>>>> fc507dbc8a0aa07f43cffa7ad3a3169b6e7d86fc

      daily_list=service.Daily_ChartData();				// 상단 차트순위 때문에 추가 (7/6 오석규)

      model.addAttribute("daily_list", daily_list);		// 상단 차트순위 때문에 추가 (7/6 오석규)

<<<<<<< HEAD
      return "main/main";

   }
=======
		

      return "main/main";
>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce

   }
<<<<<<< HEAD
=======
=======
      daily_list=service.Daily_ChartData();            // 상단 차트순위 때문에 추가 (7/6 오석규)
      model.addAttribute("daily_list", daily_list);      // 상단 차트순위 때문에 추가 (7/6 오석규)
      
      return "main/main";
   }
 
   @RequestMapping("main/login.do")
   public String login_page(Model model){
<<<<<<< HEAD

      return "main/member/login";

   }

}
=======
      return "main/member/login";
   }
}
<<<<<<< HEAD


>>>>>>> 7345ee227f99252cabf2acf84ff15494b1af1a0f
>>>>>>> fc507dbc8a0aa07f43cffa7ad3a3169b6e7d86fc

 

   @RequestMapping("main/login.do")

   public String login_page(Model model){

      return "main/member/login";

   }

<<<<<<< HEAD
}
=======
}
=======
=======
 
>>>>>>> 1488bbb8153b34da661b967748189091037b4c63
>>>>>>> 7345ee227f99252cabf2acf84ff15494b1af1a0f
>>>>>>> 37269e7a797a3d4a02951081e09072dd3231acce
>>>>>>> fc507dbc8a0aa07f43cffa7ad3a3169b6e7d86fc
