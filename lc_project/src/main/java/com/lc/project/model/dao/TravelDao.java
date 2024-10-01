package com.lc.project.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.model.vo.Travel;

public class TravelDao {
	public ArrayList<Travel> selectList(Connection conn){
		ArrayList<Travel> list
		return (ArrayList)sqlSession.selectList("mappers.selectTravelList");
	}
}
