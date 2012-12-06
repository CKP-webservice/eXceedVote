package com.ckp.model;

import java.util.Date;
import javax.persistence.*;
import javax.servlet.http.HttpSession;

@Entity
public class Login_log {
	@Temporal(TemporalType.TIMESTAMP)
	private Date timestampField;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Transient
	private HttpSession session;
	private String ip;
	
	public Date getTimestampField() {
		return timestampField;
	}

	public String getIp() {
		return ip;
	}


	public Login_log() {
		// TODO Auto-generated constructor stub
	}
	
	public Login_log(HttpSession session) {
		this.session = session;
		this.ip = (String) session.getAttribute("ip");
		this.timestampField = new Date();
	}
}
