package com.ckp.model;

import javax.persistence.*;

/*
 * @author Kanin Sirisith
 * Model from project
 */
@Entity
public class Project {
	private String projectName;
	private String projectDetail;
	private String imgURL1;
	private String imgURL2;
	private String imgURL3;
	@Id
	private int id;
	
	/*
	 * Constructor for Project class
	 * @param string project name, project detail, image URL, and project number
	 */
	public Project() {

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

	public String getImgURL1() {
		return imgURL1;
	}

	public void setImgURL1(String imgURL1) {
		this.imgURL1 = imgURL1;
	}

	public String getImgURL2() {
		return imgURL2;
	}

	public void setImgURL2(String imgURL2) {
		this.imgURL2 = imgURL2;
	}

	public String getImgURL3() {
		return imgURL3;
	}

	public void setImgURL3(String imgURL3) {
		this.imgURL3 = imgURL3;
	}
}
