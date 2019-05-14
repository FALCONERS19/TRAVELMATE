package Model;

public class RegModel {
	String fname;
	String lname;
	String email;
	String idProof;
	String gender;
	String dob;
	String add;
	String mob;
	String emphone;
	String userid;
	String password;
	public RegModel() 
	{
		
	}
	public RegModel(String fname, String lname, String email, String idProof, String gender, String dob, String add,
			String mob, String emphone, String userid, String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.idProof = idProof;
		this.gender = gender;
		this.dob = dob;
		this.add = add;
		this.mob = mob;
		this.emphone = emphone;
		this.userid = userid;
		this.password = password;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIdProof() {
		return idProof;
	}
	public void setIdProof(String idProof) {
		this.idProof = idProof;
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
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getEmphone() {
		return emphone;
	}
	public void setEmphone(String emphone) {
		this.emphone = emphone;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
