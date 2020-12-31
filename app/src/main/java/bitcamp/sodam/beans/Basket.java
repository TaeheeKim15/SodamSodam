package bitcamp.sodam.beans;

import java.sql.Date;

public class Basket {
  private int bno;
  private int uno;
  private int pno;
  private int bcnt;
  private int price;
  private String pname;
  private String sname;
  private Date bcdt;
  private String photo;
  private String priceCommas;
  private int sum; // 총 상품 금액
  private int ono; // 주문 번호
  private int tsum; // 배송비
  private int cuno; // 쿠폰 번호
  private int cuprice; // 쿠폰 금액
  private int sno; // 상점 번호

  public int getCuno() {
    return cuno;
  }

  public void setCuno(int cuno) {
    this.cuno = cuno;
  }

  public int getCuprice() {
    return cuprice;
  }

  public void setCuprice(int cuprice) {
    this.cuprice = cuprice;
  }

  public int getSno() {
    return sno;
  }

  public void setSno(int sno) {
    this.sno = sno;
  }

  public int getBno() {
    return bno;
  }

  public void setBno(int bno) {
    this.bno = bno;
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

  public int getBcnt() {
    return bcnt;
  }

  public void setBcnt(int bcnt) {
    this.bcnt = bcnt;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public String getPname() {
    return pname;
  }

  public void setPname(String pname) {
    this.pname = pname;
  }

  public String getSname() {
    return sname;
  }

  public void setSname(String sname) {
    this.sname = sname;
  }

  public Date getBcdt() {
    return bcdt;
  }

  public void setBcdt(Date bcdt) {
    this.bcdt = bcdt;
  }

  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
  }

  public String getPriceCommas() {
    return priceCommas;
  }

  public void setPriceCommas(String priceCommas) {
    this.priceCommas = priceCommas;
  }

  public int getSum() {
    return sum;
  }

  public void setSum(int sum) {
    this.sum = sum;
  }

  public int getOno() {
    return ono;
  }

  public void setOno(int ono) {
    this.ono = ono;
  }

  public int getTsum() {
    return tsum;
  }

  public void setTsum(int tsum) {
    this.tsum = tsum;
  }

}
