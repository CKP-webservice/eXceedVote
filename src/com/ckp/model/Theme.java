package com.ckp.model;

public class Theme {
	private static Theme instance = null;
	private String theme = "<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\">";
	
	private Theme() {
		
	}
	
	public static Theme getInstance() {
		if (instance == null) {
			instance = new Theme();	
		}
		return instance;
	}
	
	public String getTheme() {
		return theme;
	}
	
	public void setTheme(String theme) {
		this.theme = theme;
	}
}
