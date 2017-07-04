package com.sist.chart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChartService {
	@Autowired
	private Daily_ChartMapper dMapper;

	public List<Daily_ChartVO> Daily_ChartData()
	{
		return dMapper.Daily_ChartData();
	}

}
