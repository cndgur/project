package com.lc.project.travel.model.dao;

import static com.lc.project.common.template.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;

public class TravelDao {
	private Properties prop = new Properties();
	public TravelDao() {
		String filePath = TravelDao.class.getResource("/db/sql/JDBCmappers.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	public Travel selectTravel(Connection conn, String trName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Travel t = new Travel();
		String sql = "SELECT AC_NAME, AC_ADDRESS, TR_INFO, MAP_INFO, ACT_ID, CNT, LOCATION FROM TB_TOUR JOIN TB_TOUR_PICTURE USING(AC_NAME) WHERE AC_NAME = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				t.setTrName(rset.getString("AC_NAME"));
				t.setTrAddress(rset.getString("AC_ADDRESS"));
				t.setTrInfo(rset.getString("TR_INFO"));
				t.setMapInfo(rset.getString("MAP_INFO"));
				t.setTrId(rset.getString("ACT_ID"));
				t.setCount(rset.getInt("CNT"));
				t.setPicInfo(rset.getString("LOCATION"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return t;
	}
	public ArrayList<Travel> selectNearbyTravel(Connection conn, String trAddress, String trName){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Travel> list = new ArrayList<>();
		String sql = "SELECT AC_NAME, AC_ADDRESS, LOCATION "
				+ "FROM (SELECT AC_NAME, AC_ADDRESS, LOCATION, ROWNUM "
				+ "      FROM (SELECT AC_NAME, AC_ADDRESS, LOCATION"
				+ "            FROM TB_TOUR\r\n"
				+ "            LEFT JOIN TB_TOUR_PICTURE USING(AC_NAME) "
				+ "            WHERE AC_ADDRESS LIKE ? AND AC_NAME != ?)"
				+ "      ORDER BY DBMS_RANDOM.VALUE)"
				+ "WHERE ROWNUM <= 4";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trAddress+'%');
			pstmt.setString(2, trName);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Travel t = new Travel();
				t.setTrName(rset.getString("AC_NAME"));
				t.setTrAddress(rset.getString("AC_ADDRESS"));
				t.setPicInfo(rset.getString("LOCATION"));
				list.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<tReview> selectTReview(Connection conn, String trName){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<tReview> list = new ArrayList<>();
		String sql = "SELECT EMAIL2, CONTENT, REVIEW_DATE FROM TB_REVIEW WHERE AC_NAME = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trName);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				tReview tr = new tReview();
				tr.setWriter(rset.getString("EMAIL2"));
				tr.setContent(rset.getString("CONTENT"));
				tr.setReviewDate(rset.getDate("REVIEW_DATE"));
				list.add(tr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
}
