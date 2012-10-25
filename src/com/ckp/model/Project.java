package com.ckp.model;

/*
 * @author Kanin Sirisith
 * Model from project
 */
public class Project {
	private String projectName;
	private String projectDetail;
	private String imgURL;
	private int projectNumber;
	
	/*
	 * Constructor for Project class
	 * @param string project name, project detail, image URL, and project number
	 */
	private Project(String projectName, String projectDetail, String imgURL, int  projectNumber) {
		this.projectName = projectName;
		this.projectDetail = projectDetail;
		this.imgURL = imgURL;
		this.projectNumber = projectNumber;
	}
	
	/*
	 * @return project name
	 */
	public String getProjectName() {
		return projectName;
	}
	
	/*
	 * @param string project name
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	/*
	 * @return project details
	 */
	public String getProjectDetail() {
		return projectDetail;
	}
	
	/*
	 * @param string project details
	 */
	public void setProjectDetail(String projectDetail) {
		this.projectDetail = projectDetail;
	}
	
	/*
	 * @return image URL
	 */
	public String getImgURL() {
		return imgURL;
	}
	
	/*
	 * set Image URL
	 * @param string URL Image
	 */
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	
	/*
	 * factory method when create new object
	 * @param string project name, project details, image URL and project number
	 * @return object Project
	 */
	public static Project getProject(String projectName, String projectDetail, String imgURL, int  projectNumber){
		return new Project(projectName,projectDetail,imgURL, projectNumber);
	}

	/*
	 * @return project number
	 */
	public int getProjectNumber() {
		return projectNumber;
	}

	/*
	 * set project number to attribute
	 * @param integer project number
	 */
	public void setProjectNumber(int projectNumber) {
		this.projectNumber = projectNumber;
	}
}
