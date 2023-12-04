package com.ji.spring009.error;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {
	
	@Autowired
	private ErrorDAO eDAO;

	@RequestMapping(value = "/error.go", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		eDAO.getAllError(req);
		req.setAttribute("r", "에러 연결 성공!");
		return "index";
		
	}
	
}
