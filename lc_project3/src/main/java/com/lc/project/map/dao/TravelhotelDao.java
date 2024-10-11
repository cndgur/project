package com.lc.project.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;

public class TravelhotelDao {
	
	public ArrayList<Travel> selectTravelTag(SqlSession sqlSession, String Name, String Address, String map_lat, String map_long) {
		Map<String, Object> params = new HashMap<>();
	    params.put("Name", Name);
	    params.put("Address", Address);
	    params.put("map_lat", map_lat);
	    params.put("map_long", map_long);
	    
		return (ArrayList)sqlSession.selectList("", params);
	}
	
	public ArrayList<> selectHotelTag(){
		
	}
}