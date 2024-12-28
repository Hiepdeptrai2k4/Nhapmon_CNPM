package BookStore.Entity;

public class ChangePassForm {
	private String currPass;
	private String newPass;
	private String newPass2;
	
	public ChangePassForm() {
		super();
	}
	public String getCurrPass() {
		return currPass;
	}
	public void setCurrPass(String currPass) {
		this.currPass = currPass;
	}
	public String getNewPass() {
		return newPass;
	}
	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}
	public String getNewPass2() {
		return newPass2;
	}
	public void setNewPass2(String newPass2) {
		this.newPass2 = newPass2;
	}
	
}
