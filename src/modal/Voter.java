package modal;

public class Voter{
	private String userName;
	private String voter_id;
	private String aadhar_Number;
	private String gender;
	private String dob;
	private String mobile_No;
	private String email_Id;
	private String user_Password;
	private String address;
	private static int count;

	public static int getCount() {
		return count;
	}
	public static void setCount(int count) {
		Voter.count = count;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getVoter_id() {
		return voter_id;
	}
	public void setVoter_id(String voter_id) {
		this.voter_id = voter_id;
	}
	public String getAadhar_Number() {
		return aadhar_Number;
	}
	public void setAadhar_Number(String aadhar_Number) {
		this.aadhar_Number = aadhar_Number;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMobile_No() {
		return mobile_No;
	}
	public void setMobile_No(String mobile_No) {
		this.mobile_No = mobile_No;
	}
	public String getEmail_Id() {
		return email_Id;
	}
	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}
	public String getUser_Password() {
		return user_Password;
	}
	public void setUser_Password(String user_Password) {
		this.user_Password = user_Password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	}
