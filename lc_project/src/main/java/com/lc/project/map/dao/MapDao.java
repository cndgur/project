package com.lc.project.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;

public class MapDao {

	public ArrayList<Travel> selectTravelTag(SqlSession sqlSession, String personnel, String location, String theme) {
		Map<String, Object> params = new HashMap<>();
	    params.put("personnel", personnel);
	    params.put("location", location);
	    params.put("theme", theme);
<<<<<<< HEAD
=======
<<<<<<< HEAD
	    
=======

>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		return (ArrayList)sqlSession.selectList("travelMapper.selectTravelTag", params);
	}

	public ArrayList<Travel> selectWishList(SqlSession sqlSession, String userId) {
		System.out.println("dao : " + userId);

		return (ArrayList)sqlSession.selectList("travelMapper.selectWishList", userId);
	}
}
