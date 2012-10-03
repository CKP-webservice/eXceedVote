package com.ckp.model;
import java.util.*;

public class ProjectCatalog {
	private ArrayList<Project> projectList;
	public ProjectCatalog()
	{
		projectList = new ArrayList<Project>();
	}
	
	public void addProject(Project project) {
		projectList.add(project);
	}
	
	public void addProject(String projectName, String projectDetail, String imgURL, int projectNumber) {
		Project project = Project.getProject(projectName, projectDetail, imgURL, projectNumber);
		projectList.add(project);
	}
	
}
