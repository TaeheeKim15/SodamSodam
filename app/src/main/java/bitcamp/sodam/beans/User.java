package bitcamp.sodam.beans;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private int uno;
	private String name;
	private String email;
	private String pwd;
	private String pst;
	private String addr;
	private String det_addr;
	private String tel;
	private String birth;
	private int status;
	private int auth;
	private String uphoto;
	private String uthum_photo;
	private MultipartFile upload_image;
	private Date rdt;
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPst() {
		return pst;
	}
	public void setPst(String pst) {
		this.pst = pst;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDet_addr() {
		return det_addr;
	}
	public void setDet_addr(String det_addr) {
		this.det_addr = det_addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public String getUphoto() {
		return uphoto;
	}
	public void setUphoto(String uphoto) {
		this.uphoto = uphoto;
	}
	public String getUthum_photo() {
		return uthum_photo;
	}
	public void setUthum_photo(String uthum_photo) {
		this.uthum_photo = uthum_photo;
	}
	public MultipartFile getUpload_image() {
		return upload_image;
	}
	public void setUpload_image(MultipartFile upload_image) {
		this.upload_image = upload_image;
	}
	public Date getRdt() {
		return rdt;
	}
	public void setRdt(Date rdt) {
		this.rdt = rdt;
	}
	
	
	
	
}
