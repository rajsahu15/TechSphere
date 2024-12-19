package dtos;

public class RegisterClient {

	private String username;
	private String password;
	private String logtype;
	
	
	
	
	public RegisterClient(String username, String password, String logtype) {
		this.username = username;
		this.password = password;
		this.logtype = logtype;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogtype() {
		return logtype;
	}
	public void setLogtype(String logtype) {
		this.logtype = logtype;
	}
	
	
	
}
