package com.ji.spring008.fruit;

import java.util.List;

public interface fruitMapper {

	public abstract List<fruit> getAllFruit();
	public abstract List<fruit> searchFruit(fruit f);
	
}
