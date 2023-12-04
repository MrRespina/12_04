package com.ji.spring008.fruit;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

//		DB 테이블 자체를 표현하는 자바 빈

@XmlRootElement
public class Fruits {
	
	private List<fruit> fruit;
	
	public Fruits() {
		// TODO Auto-generated constructor stub
	}
	
	public Fruits(List<com.ji.spring008.fruit.fruit> fruit) {
		super();
		this.fruit = fruit;
	}


	public List<fruit> getFruit() {
		return fruit;
	}

	@XmlElement
	public void setFruit(List<fruit> fruit) {
		this.fruit = fruit;
	}
	
	

}
