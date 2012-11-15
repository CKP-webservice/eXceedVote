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
}
