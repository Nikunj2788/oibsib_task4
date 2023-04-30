package com.bean;

public class student {
private int id ;
private String name,contactno,email,password,confirmpass;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getConfirmpass() {
	return confirmpass;
}
public void setConfirmpass(String confirmpass) {
	this.confirmpass = confirmpass;
}
@Override
public String toString() {
	return "student [id=" + id + ", name=" + name + ", contactno=" + contactno + ", email=" + email + ", password="
			+ password + ", confirmpass=" + confirmpass + "]";
}

}
