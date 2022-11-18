package com.sist.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.HouseDAO;
import com.sist.dao.ImgDAO;
import com.sist.dao.MgrDAO;
import com.sist.dao.OptDAO;
import com.sist.dao.SecurityDAO;
import com.sist.vo.HouseVO;
import com.sist.vo.ImgVO;
import com.sist.vo.MgrVO;
import com.sist.vo.OptVO;
import com.sist.vo.SecurityVO;

public class LoadHouseAction implements ProjectAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int houseno = 1;
		HouseDAO house_dao = HouseDAO.getInstance();
		OptDAO opt_dao = OptDAO.getInstance();
		MgrDAO mgr_dao = MgrDAO.getInstance();
		ImgDAO img_dao = ImgDAO.getInstance();
		SecurityDAO seq_dao = SecurityDAO.getInstance();
		
		ArrayList<OptVO> opt_list = opt_dao.findByNo(houseno);
		ArrayList<MgrVO> mgr_list = mgr_dao.findByNo(houseno);
		ArrayList<ImgVO> img_list = img_dao.findByNo(houseno);
		ArrayList<SecurityVO> seq_list = seq_dao.findByNo(houseno);
		ArrayList<HouseVO> house_list = house_dao.findByNo(houseno);
		request.setAttribute("opt_list", opt_list);
		request.setAttribute("mgr_list", mgr_list);
		request.setAttribute("img_list", img_list);
		request.setAttribute("seq_list", seq_list);
		request.setAttribute("house_list", house_list);
		
		return "detailHouse.jsp";
	}

}
