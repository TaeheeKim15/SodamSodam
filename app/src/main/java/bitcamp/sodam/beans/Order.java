package bitcamp.sodam.beans;

import java.sql.Date;

public class Order {
	 
	private int ono;
	private int uno;
	private int pno;
	private int price;
	private int op_cnt;
	private String sname;
	private String pname;
	private String addr;
	private String det_addr;
	private Date odt;
	private int dstatus;
	
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOp_cnt() {
		return op_cnt;
	}
	public void setOp_cnt(int op_cnt) {
		this.op_cnt = op_cnt;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
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
	public Date getOdt() {
		return odt;
	}
	public void setOdt(Date odt) {
		this.odt = odt;
	}
	public int getDstatus() {
		return dstatus;
	}
	public void setDstatus(int dstatus) {
		this.dstatus = dstatus;
	}
	
	
	

}
