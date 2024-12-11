package BookStore.Entity;

public class Authors {
	private int authorID;
	private String authorName;
	private String authorImg;
	private String information;
	public Authors() {
		super();
	}
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getAuthorImg() {
		return authorImg;
	}
	public void setAuthorImg(String authorImg) {
		this.authorImg = authorImg;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	
}
