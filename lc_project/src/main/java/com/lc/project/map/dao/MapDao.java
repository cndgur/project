package com.lc.project.map.dao;

import com.lc.project.travel.model.vo.Travel;

public class MapDao {

	public Travel selectTravel(String personnel, String location, String theme) {
		return sqlSession.selectTravel("");
	}
}
