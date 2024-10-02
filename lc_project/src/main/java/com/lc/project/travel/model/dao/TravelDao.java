package com.lc.project.travel.model.dao;

import static com.lc.project.common.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.lc.project.travel.model.vo.Travel;

public class TravelDao {
	private Properties prop = new Properties();
	public TravelDao() {
		String filePath = TravelDao.class.getResource("/db/sql/JDBCmappers.xml").getPath();
		System.out.println(filePath);
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
		System.out.println(sql);
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
	public Travel selectTravel(Connection conn, String trName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Travel t = new Travel();
		String sql = "SELECT AC_NAME, AC_ADDRESS, TR_INFO, MAP_INFO, ACT_ID, CNT, LOCATION FROM TB_TOUR JOIN TB_TOUR_PICTURE USING(AC_NAME) WHERE AC_NAME = ?";
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				t.setTrName(rset.getString("ac_name"));
				t.setTrAddress(rset.getString("ac_address"));
				t.setTrInfo(rset.getString("tr_info"));
				t.setMapInfo(rset.getString("MAP_INFO"));
				t.setTrId(rset.getString("act_id"));
				t.setCount(rset.getInt("cnt"));
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
}
