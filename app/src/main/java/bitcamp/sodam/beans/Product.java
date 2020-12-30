package bitcamp.sodam.beans;

import java.sql.Date;
import java.util.List;

public class Product {
	private int pno;
	private int sno;
	private String pname;
	private int price;
	private int stock;
	private String photo;
	private String pint;
	private Date pcdt;
	private String sname;
	private Store market;
	private List<Store> stores;
	private int dyesno;

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPint() {
		return pint;
	}

	public void setPint(String pint) {
		this.pint = pint;
	}

	public Date getPcdt() {
		return pcdt;
	}

	public void setPcdt(Date pcdt) {
		this.pcdt = pcdt;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Store getMarket() {
		return market;
	}

	public void setMarket(Store market) {
		this.market = market;
	}

	public List<Store> getStores() {
		return stores;
	}

	public void setStores(List<Store> stores) {
		this.stores = stores;
	}

	public int getDyesno() {
		return dyesno;
	}

	public void setDyesno(int dyesno) {
		this.dyesno = dyesno;
	}

}
