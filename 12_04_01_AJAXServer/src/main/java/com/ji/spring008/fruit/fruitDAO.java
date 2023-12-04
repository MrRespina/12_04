package com.ji.spring008.fruit;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class fruitDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void getAllFruit(HttpServletRequest req) {
		
		try {
			req.setAttribute("fruits", ss.getMapper(fruitMapper.class).getAllFruit());
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	//	Spring에서 XML 끌어오는 시스템 : XML AJAX Server.
	//		현재] DB에 있는 과일 데이터 하나를 표현하는 JavaBean(fruit.java) 파일을 가지고 있는 상태이다.
	//		우리가 필요한 것]
	//			1. DB에 있는 [과일테이블] 자체를 표현할 또하나의 JavaBean이 필요하다.
	//			2. Spring이 XML로 바뀔 수 있도록
	//				각각의 JavaBean의 클래스명 위에 @XmlRootElement annotation 달기.
	//			3. Setter 위에 @XMLElement annotation 달기.
	//		특정 데이터 > XML 형태로 바꾸는 것 : Mashalling(마샬링)
	
	public Fruits getXML(HttpServletRequest req) {
		
		List<fruit> fruits = ss.getMapper(fruitMapper.class).getAllFruit();
		Fruits fruitss = new Fruits(fruits);
		return fruitss;
		
	}
	
	public Fruits searchXML(HttpServletRequest req,fruit f) {
		
		/*List<fruit> fruits = ss.getMapper(fruitMapper.class).searchFruit(f);
		Fruits ff = new Fruits(fruits);
		return ff;*/
		
		return new Fruits(ss.getMapper(fruitMapper.class).searchFruit(f));
		
	}
	

}
