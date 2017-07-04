package com.sist.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.chart.ChartService;
import com.sist.chart.Daily_ChartVO;



@Controller
public class ChartController {
	   @Autowired
	   private ChartService service;
	   @RequestMapping("main/daily_chart.do")
	   public String dayliyChart_list(Model model){
	
		   List<Daily_ChartVO> list=service.Daily_ChartData();
		   model.addAttribute("list", list);
		   model.addAttribute("main_jsp", "chart/daliy_Chart.jsp");
		   return "main/main";
	   }
	   

}

