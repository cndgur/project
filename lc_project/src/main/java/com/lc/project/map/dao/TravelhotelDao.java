package com.lc.project.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;

public class TravelhotelDao {
	
<<<<<<< HEAD
	// 찜한 여행지 목록을 DB에서 가져오는 메서드
    public ArrayList<Travel> getWishList(SqlSession sqlSession, String userId) {
        return (ArrayList) sqlSession.selectList("travelMapper.getWishList", userId);
    }
=======
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
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
}