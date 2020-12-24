package bitcamp.sodam.beans;

import java.sql.Date;
import java.util.List;

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


  public User getOwner() {
      return owner;
    }

    public void setOwner(User owner) {
      this.owner = owner;
    }

	public String getScdt() {
		return scdt;
	}

	public void setScdt(String scdt) {
		this.scdt = scdt;
	}

	public List<Category> getCategory() {
		return category;
	}

	public void setCategory(List<Category> category) {
		this.category = category;
	}

  public int getScategory() {
    return scategory;
  }

  public void setScategory(int scategory) {
    this.scategory = scategory;
  }

	
}
