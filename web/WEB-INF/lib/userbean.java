package userbeanpack;

public class userbean {
	private String username;
	private String password;
	private String email;
	private String phone;
	private String burndate;
	private String adress;
	private boolean active = false;
	
	public userbean(){
		username =null;
		password =null;
		email =null;
		phone = null;
		burndate = null;
		adress = null;
		active =false;
	}
	
	public boolean getActive() {
        return active;
    }
    public void setActive(boolean active) {
        this.active = active;
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
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getBurnDate() {
        return burndate;
    }
    public void setBurnDate(String burndate) {
        this.burndate = burndate;
    }
    
    public String getAdress() {
        return adress;
    }
    public void setAdress(String adress) {
        this.adress = adress;
    }

    
    
}
