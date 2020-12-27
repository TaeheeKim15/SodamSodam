package bitcamp.sodam.beans;

import java.sql.Date;

public class Coupon {
	private int mcuno;
	private int uno;
	private int cuno;
	private String cuname;
	private int cuprice;
	private Date cuexp;
	private String cuint;
	private Date mcudt;
	private int mcu_status;
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getMcuno() {
		return mcuno;
	}
	public void setMcuno(int mcuno) {
		this.mcuno = mcuno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public int getCuno() {
		return cuno;
	}
	public void setCuno(int cuno) {
		this.cuno = cuno;
	}
	public String getCuname() {
		return cuname;
	}
	public void setCuname(String cuname) {
		this.cuname = cuname;
	}
	public int getCuprice() {
		return cuprice;
	}
	public void setCuprice(int cuprice) {
		this.cuprice = cuprice;
	}
	public Date getCuexp() {
		return cuexp;
	}
	public void setCuexp(Date cuexp) {
		this.cuexp = cuexp;
	}
	public String getCuint() {
		return cuint;
	}
	public void setCuint(String cuint) {
		this.cuint = cuint;
	}
	public Date getMcudt() {
		return mcudt;
	}
	public void setMcudt(Date mcudt) {
		this.mcudt = mcudt;
	}
	public int getMcu_status() {
		return mcu_status;
	}
	public void setMcu_status(int mcu_status) {
		this.mcu_status = mcu_status;
	}
	
	

}
