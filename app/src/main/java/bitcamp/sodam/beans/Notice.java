package bitcamp.sodam.beans;

import java.sql.Date;

public class Notice {
	private int nno;
	private String ntitle;
	private String ncontent;
	private String ndate;
	private String nv_cnt;
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getNdate() {
		return ndate;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
	public String getNv_cnt() {
		return nv_cnt;
	}
	public void setNv_cnt(String nv_cnt) {
		this.nv_cnt = nv_cnt;
	}
	
}
