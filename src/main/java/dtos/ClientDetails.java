package dtos;

public class ClientDetails {

	private String email;
	private String mode;
	private String message;
	private String name;
	ClientDetails()
{
	
}
	public ClientDetails(String name,String email, String mode, String message )
	{
		super();
		this.name = name;
		this.email = email;
		this.mode = mode;
		this.message = message;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
