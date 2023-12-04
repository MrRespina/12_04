package com.ji.spring008.fruit;

import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class fruit {
	
	private String f_name;
	private BigDecimal f_price;
	private String f_location;
	
	public fruit() {
		// TODO Auto-generated constructor stub
	}

	public fruit(String f_name, BigDecimal f_price, String f_location) {
		super();
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_location = f_location;
	}

	public String getF_name() {
		return f_name;
	}

	@XmlElement
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public BigDecimal getF_price() {
		return f_price;
	}

	@XmlElement
	public void setF_price(BigDecimal f_price) {
		this.f_price = f_price;
	}

	public String getF_location() {
		return f_location;
	}

	@XmlElement
	public void setF_location(String f_location) {
		this.f_location = f_location;
	}
	
	

}
