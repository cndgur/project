package com.lc.project.travel.model.dao;

import static com.lc.project.common.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;

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

	public ArrayList<Travel> selectList(Connection conn){
		ArrayList<Travel> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("travelTopList");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Travel t = new Travel();
				t.setTrName(rset.getString("ac_name"));
				t.setTrAddress(rset.getString("ac_address"));
				t.setTrInfo(rset.getString("tr_info"));
				t.setMapInfo(rset.getString("map_info"));
				t.setTrId(rset.getString("act_id"));
				t.setCount(rset.getInt("Field"));
				list.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
//	public Travel selectTravel(SqlSession sqlSession, String trName) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		Travel t = new Travel();
//		String sql = "SELECT AC_NAME, AC_ADDRESS, TR_INFO FROM TB_TOUR WHERE AC_NAME = '서울식물원'";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			rset = pstmt.executeQuery();
//			if(rset.next()) {
//				t.setTrName(rset.getString("ac_name"));
//				t.setTrAddress(rset.getString("ac_address"));
//				t.setTrInfo(rset.getString("tr_info"));
//				t.setTrId(rset.getString("act_id"));
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//			close(rset);
//			close(pstmt);
//		}
//		
//		System.out.println(t);
//		return t;
//	}

	public ArrayList<Travel> selectList(SqlSession sqlSession, String location) {
		return (ArrayList)sqlSession.selectList("travelMapper.locationList",location);
	}

	public ArrayList<Travel> foodSelectList(SqlSession sqlSession, String location) {
		return (ArrayList)sqlSession.selectList("travelMapper.foodList",location);
		}

	public Travel selectTravel(SqlSession sqlSession, String trName) {
		return sqlSession.selectOne("travelMapper.selectTravel",trName);
	}

	public ArrayList<Travel> otherList(SqlSession sqlSession, HashMap<String, String> map) {
		return (ArrayList)sqlSession.selectList("travelMapper.otherList",map);
	}
}
