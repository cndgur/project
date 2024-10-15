package com.lc.project.hotel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.hotel.service.HotelService;
import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HotelInfoController
 */
public class HotelInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
		String HotelName = request.getParameter("hotel");
		System.out.println(HotelName);
=======
<<<<<<< HEAD
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		HotelService hServ = new HotelService(); 
		Hotel h = hServ.selectHotel(HotelName);
		ArrayList<Room> rlist = hServ.selectRoomList(h.getBsId());
		String[] strArr = h.gethAddress().split(" ");
		String hAdd = strArr[0]+" "+strArr[1];
<<<<<<< HEAD
		ArrayList<Travel> tlist = new TravelService().selectNearbyTravel(hAdd," ");
=======
		ArrayList<Travel> tlist = new TravelService().selectNearbyTravel(hAdd,"");
=======
		String HotelName = request.getParameter("hotel");
		HotelService hServ = new HotelService(); 
		Hotel h = hServ.selectHotel(HotelName);
		ArrayList<Room> rlist = hServ.selectRoomList(h.getBsId());
		String[] strArr = h.gethAddress().split(" ");
		String hAdd = strArr[0]+" "+strArr[1];
		ArrayList<Travel> tlist = new TravelService().selectNearbyTravel(hAdd," ");
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		for(Travel tra : tlist) {
			tra.setTrAddress(hAdd);
		}
		ArrayList<Hotel> hlist = hServ.selectHotelList(hAdd,h.gethName());
<<<<<<< HEAD
		for(Hotel ht : hlist) {
			ht.sethAddress(hAdd);
		}
=======
<<<<<<< HEAD
=======
		for(Hotel ht : hlist) {
			ht.sethAddress(hAdd);
		}
		System.out.println(hlist);
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		request.setAttribute("h", h);
		request.setAttribute("hlist", hlist);
		request.setAttribute("tlist", tlist);
		request.setAttribute("rlist", rlist);
<<<<<<< HEAD
=======
<<<<<<< HEAD
		System.out.println(rlist);
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
		request.getRequestDispatcher("views/detail/ht_infoPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

<<<<<<< HEAD
}
=======
}
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
