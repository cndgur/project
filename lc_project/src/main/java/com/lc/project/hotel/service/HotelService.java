package com.lc.project.hotel.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.hotel.model.dao.HotelDao;
import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;

public class HotelService {
	private	HotelDao hDao = new HotelDao();
	public Hotel selectHotel(String hName) {
		Connection conn = JDBCTemplate.getConnection();
		Hotel h = hDao.selectHotel(conn,hName);
		JDBCTemplate.close(conn);
		return h;
	}
	public ArrayList<Hotel> selectHotelList(String hAddress,String hName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Hotel> list = hDao.selectHotelList(conn,hAddress,hName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Room> selectRoomList(String bsId){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Room> list = hDao.selectRoomList(conn,bsId);
		JDBCTemplate.close(conn);
		return list;
	}
}
