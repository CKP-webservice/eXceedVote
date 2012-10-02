package Model;
import java.util.*;

public class ProjectCatalog {
	ArrayList<Project> projectList;
	public ProjectCatalog()
	{
		projectList = new ArrayList<Project>();
	}
	
	public void addProject(Project project) {
		projectList.add(project);
	}
	
	public void addProject(String projectName, String projectDetail, String imgURL) {
		Project project = Project.getProject(projectName, projectDetail, imgURL);
		projectList.add(project);
	}
	
}
