package com.ckp.model;

public class Project {
	private String projectName;
	private String projectDetail;
	private String imgURL;
	private int projectNumber;
	
	private Project(String projectName, String projectDetail, String imgURL, int  projectNumber) {
		this.projectName = projectName;
		this.projectDetail = projectDetail;
		this.imgURL = imgURL;
		this.projectNumber = projectNumber;
	}
	
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectDetail() {
		return projectDetail;
	}
	public void setProjectDetail(String projectDetail) {
		this.projectDetail = projectDetail;
	}
	public String getImgURL() {
		return imgURL;
	}
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	public static Project getProject(String projectName, String projectDetail, String imgURL, int  projectNumber){
		return new Project(projectName,projectDetail,imgURL, projectNumber);
	}

	public int getProjectNumber() {
		return projectNumber;
	}

	public void setProjectNumber(int projectNumber) {
		this.projectNumber = projectNumber;
	}
}
