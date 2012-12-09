package com.ckp.model;

import java.util.Date;

public class VoteTime {
	
	private Date startTime;
	private Date stopTime;
	private static VoteTime instance = null;
	
	private VoteTime() {
		
	}
	
	public static VoteTime getInstance() {
		if (instance == null) {
			instance = new VoteTime();
		}
		return instance;
	}

	public Date getStopTime() {
		return stopTime;
	}

	public void setStopTime(Date stopTime) {
		this.stopTime = stopTime;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	
	
	
}
