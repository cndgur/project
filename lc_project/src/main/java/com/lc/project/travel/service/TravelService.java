package com.lc.project.travel.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.travel.model.dao.TravelDao;
import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;

public class TravelService {
	private TravelDao tDao = new TravelDao();
	public Travel selectTravel(String trName) {
		Connection conn = JDBCTemplate.getConnection();
		Travel t = tDao.selectTravel(conn,trName);
		JDBCTemplate.close(conn);
		return t;
	}
	public ArrayList<Travel> selectNearbyTravel(String trAddress, String trName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectNearbyTravel(conn,trAddress,trName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Travel> selectWishList(String userName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectWishList(conn,userName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<tReview> selectTReview(String trName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<tReview> list = tDao.selectTReview(conn,trName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Travel> selectMainList(){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectMainList(conn);
		JDBCTemplate.close(conn);
		return list;
	}
	public int insertReview(String review,String userName,String travel) {
		Connection conn = JDBCTemplate.getConnection();
		int result = tDao.insertReview(conn,review,userName, travel);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

}
