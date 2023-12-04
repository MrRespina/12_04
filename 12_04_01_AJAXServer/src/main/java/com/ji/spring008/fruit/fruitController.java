package com.ji.spring008.fruit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class fruitController {
	
	@Autowired
	private fruitDAO fDAO;

	@RequestMapping(value = "/fruit.f", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		fDAO.getAllFruit(req);
		req.setAttribute("r", "테이블 보기 성공!");
		return "index";
	}	
	
	// 11_29_1_SpringMVC << HomeContller 에 @ResponseBody annotation에 대한 설명 있음!
	@RequestMapping(value = "/fruit.getXML", method = RequestMethod.GET,produces = "application/xml;charset=UTF-8")
	public @ResponseBody Fruits getFruitXML(HttpServletRequest req) {
		return fDAO.getXML(req);
	}	
	
	@RequestMapping(value = "/fruit.searchXML", method = RequestMethod.GET,produces = "application/xml;charset=UTF-8")
	public @ResponseBody Fruits searchFruitXML(HttpServletRequest req,fruit f) {
		return fDAO.searchXML(req, f);
	}	
	
}
