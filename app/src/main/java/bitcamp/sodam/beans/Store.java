package bitcamp.sodam.beans;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Store {
  private int sno;
  private int uno;
  private String sname;
  private String sint;
  private String stel;
  private String saddr;
  private String s_det_addr;
  private int dyesno;
  private String sphoto;
  private String edt;
  private String sdt;
  private String scdt;
  private User owner;
  private int scategory;
  private List<Category> category;
  private List<Category> categoryNo;
  private MultipartFile upload_image;
  private List<String> categoryName;
  
public int getSno() {
	return sno;
}
public void setSno(int sno) {
	this.sno = sno;
}
public int getUno() {
	return uno;
}
public void setUno(int uno) {
	this.uno = uno;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getSint() {
	return sint;
}
public void setSint(String sint) {
	this.sint = sint;
}
public String getStel() {
	return stel;
}
public void setStel(String stel) {
	this.stel = stel;
}
public String getSaddr() {
	return saddr;
}
public void setSaddr(String saddr) {
	this.saddr = saddr;
}
public String getS_det_addr() {
	return s_det_addr;
}
public void setS_det_addr(String s_det_addr) {
	this.s_det_addr = s_det_addr;
}
public int getDyesno() {
	return dyesno;
}
public void setDyesno(int dyesno) {
	this.dyesno = dyesno;
}
public String getSphoto() {
	return sphoto;
}
public void setSphoto(String sphoto) {
	this.sphoto = sphoto;
}
public String getEdt() {
	return edt;
}
public void setEdt(String edt) {
	this.edt = edt;
}
public String getSdt() {
	return sdt;
}
public void setSdt(String sdt) {
	this.sdt = sdt;
}
public String getScdt() {
	return scdt;
}
public void setScdt(String scdt) {
	this.scdt = scdt;
}
public User getOwner() {
	return owner;
}
public void setOwner(User owner) {
	this.owner = owner;
}
public int getScategory() {
	return scategory;
}
public void setScategory(int scategory) {
	this.scategory = scategory;
}
public List<Category> getCategory() {
	return category;
}
public void setCategory(List<Category> category) {
	this.category = category;
}
public List<Category> getCategoryNo() {
	return categoryNo;
}
public void setCategoryNo(List<Category> categoryNo) {
	this.categoryNo = categoryNo;
}
public MultipartFile getUpload_image() {
	return upload_image;
}
public void setUpload_image(MultipartFile upload_image) {
	this.upload_image = upload_image;
}
public List<String> getCategoryName() {
	return categoryName;
}
public void setCategoryName(List<String> categoryName) {
	this.categoryName = categoryName;
}
  
  

	
}
