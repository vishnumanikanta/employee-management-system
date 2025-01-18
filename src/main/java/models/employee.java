package models;

public class employee {
	private String rollnumber;
	private String employeename;
	private String email;
	private String address;
	private int pincode;
	private long mobilenumber;
	private int gender;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRollnumber() {
		return rollnumber;
	}

	public void setRollnumber(String rollnumber) {
		this.rollnumber = rollnumber;
	}

	public String getEmployeename() {
		return employeename;
	}

	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public long getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public employee(String rollnumber, String employeename, String email, String address, int pincode,
			long mobilenumber, int gender, String password) {
		super();
		this.rollnumber = rollnumber;
		this.employeename = employeename;
		this.email = email;
		this.address = address;
		this.pincode = pincode;
		this.mobilenumber = mobilenumber;
		this.gender = gender;
		this.password = password;
	}

	

}
