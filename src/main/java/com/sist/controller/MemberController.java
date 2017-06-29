package com.sist.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;
import com.sist.member.dao.ZipcodeVO;

@Controller
public class MemberController {
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("main/login_ok.do")
	public String member_login(String member_nick, String member_pwd, HttpSession session, Model model){
		int idCount=dao.memberIdCheck(member_nick);
		String res="";
		if(idCount==0){
			res="NOID";
		}
		else{
			String pwd_db=dao.memberGetPwd(member_nick);
			if(member_pwd.equals(pwd_db)){
				res="OK";
				MemberVO vo=dao.memberInfoData(member_nick);
				session.setAttribute("nick", vo.getMember_nick());
				session.setAttribute("name", vo.getMember_name());
				
			}else{
				res="NOPWD";
			}
		}
		model.addAttribute("res", res);
		return "main/member/login_ok";
	}
	
	@RequestMapping("main/logout.do")
	public String member_logout(){
		return ""; //�����Ұž�~(����)	
	}
	
	//ȸ������ ����
	@RequestMapping("main/join.do")
	public String join_page(Model model){
		model.addAttribute("main_jsp", "member/join.jsp");		
		return "main/member/join";
	}
	//ȸ������ �Ϸ�
	@RequestMapping("main/join_ok.do")
	public String member_join_ok(MemberVO vo, Model model){
		vo.setMember_phone(vo.getMember_phone1()+"-"+vo.getMember_phone2()+"-"+vo.getMember_phone3());
		vo.setMember_post(vo.getMember_post1()+"-"+vo.getMember_post2());
		vo.setMember_addr(vo.getMember_addr1()+"-"+vo.getMember_addr2());
		dao.memberInsert(vo);
		model.addAttribute("main_jsp", "member/join_ok.jsp");
		return "main/main";
	}
	
	//���̵� üũ
	@RequestMapping("main/idcheck.do")
	public String member_idcheck(){
		return "main/member/idcheck";
	}
	
	//���̵� üũ Ȯ��
	@RequestMapping("main/idcheck_result.do")
	public String member_idcheck_result(String member_nick, Model model){
		int count=dao.memberIdCheck(member_nick);
		model.addAttribute("count", count);
		model.addAttribute("member_nick", member_nick);
		return "main/member/idcheck_result";
	}
	
	//�ּ�ã��
	@RequestMapping("main/postfind.do")
	public String member_postfind(){
		return "main/member/postfind";
	}
	
	//�ּ�ã���� �Է��ϱ�
	@RequestMapping("main/postfind_result.do")
	public String member_postfind_result(String dong, Model model){
		System.out.println(dong);
		List<ZipcodeVO> list=dao.zipcodeListData(dong);
		model.addAttribute("list", list);
		model.addAttribute("count", list.size());
		return "main/member/postfind_result";
	}

	
}
