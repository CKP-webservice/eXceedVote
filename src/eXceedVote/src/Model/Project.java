package Model;

public class Project {
	private String projectName;
	private String projectDetail;
	private String imgURL;
	
	private Project(String projectName, String projectDetail, String imgURL) {
		this.projectName = projectName;
		this.projectDetail = projectDetail;
		this.imgURL = imgURL;
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
	public static Project getProject(String projectName, String projectDetail, String imgURL){
		return new Project(projectName,projectDetail,imgURL);
	}
}
