package com.ckp.model;
import java.util.*;

/**
 * 
 * @author Kanin Sirisith
 * Model for ProjectCatalog, keep all project in catalog
 */
public class ProjectCatalog {
	private ArrayList<Project> projectList;
	
	/**
	 * Constructor for ProjectCatalog Class
	 */
	public ProjectCatalog()
	{
		projectList = new ArrayList<Project>();
	}
	
	/**
	 * add project to catalog list
	 * @param Project object
	 */
	public void addProject(Project project) {
		projectList.add(project);
	}
	
	/**
	 * add project to catalog list with parameter
	 * @param string project name
	 * @param string project detail
	 * @param string URL of image
	 * @param number of project
	 */
	public void addProject(String projectName, String projectDetail, String imgURL, int projectNumber) {
		Project project = Project.getProject(projectName, projectDetail, imgURL, projectNumber);
		projectList.add(project);
	}
	
}
