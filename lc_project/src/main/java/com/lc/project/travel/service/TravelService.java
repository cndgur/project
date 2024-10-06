package com.lc.project.travel.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.travel.model.dao.TravelDao;
import com.lc.project.travel.model.vo.Travel;

public class TravelService {
	private TravelDao tDao = new TravelDao();
	public ArrayList<Travel> selectList(){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectList(conn);
		JDBCTemplate.close(conn);
		return list;
	}
	public Travel selectTravel(String trName) {
		SqlSession sqlSession = Template.getSqlSession();
		Travel t = tDao.selectTravel(sqlSession,trName);
		sqlSession.close();
		return t;
	}
	public ArrayList<Travel> locationList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.selectList(sqlSession, location);
		sqlSession.close();
		
		return list;
	}
	public ArrayList<Travel> foodList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.foodSelectList(sqlSession, location);
		sqlSession.close();
		System.out.println(list);
		return list;
	}
}
