package com.entity;
public class Orders {
private String ordersid;
public String getOrdersid() { return ordersid; }
public void setOrdersid(String ordersid) { this.ordersid = ordersid; }
private Goods goods;
public Goods getGoods() { return goods; }
public void setGoods(Goods goods) { this.goods = goods; }
private String ordercode;
public String getOrdercode() { return this.ordercode; }
public void setOrdercode(String ordercode) { this.ordercode = ordercode; }
private String buyerid;
public String getBuyerid() { return this.buyerid; }
public void setBuyerid(String buyerid) { this.buyerid = buyerid; }
private String sellerid;
public String getSellerid() { return this.sellerid; }
public void setSellerid(String sellerid) { this.sellerid = sellerid; }
private String goodsid;
public String getGoodsid() { return this.goodsid; }
public void setGoodsid(String goodsid) { this.goodsid = goodsid; }
private String num;
public String getNum() { return this.num; }
public void setNum(String num) { this.num = num; }
private String price;
public String getPrice() { return this.price; }
public void setPrice(String price) { this.price = price; }
private String total;
public String getTotal() { return this.total; }
public void setTotal(String total) { this.total = total; }
private String status;
public String getStatus() { return this.status; }
public void setStatus(String status) { this.status = status; }
private String addtime;
public String getAddtime() { return this.addtime; }
public void setAddtime(String addtime) { this.addtime = addtime; }
private String receiver;
public String getReceiver() { return this.receiver; }
public void setReceiver(String receiver) { this.receiver = receiver; }
private String address;
public String getAddress() { return this.address; }
public void setAddress(String address) { this.address = address; }
private String contact;
public String getContact() { return this.contact; }
public void setContact(String contact) { this.contact = contact; }
private Users seller;
private Users buyer;
public Users getSeller() {
	return seller;
}
public void setSeller(Users seller) {
	this.seller = seller;
}
public Users getBuyer() {
	return buyer;
}
public void setBuyer(Users buyer) {
	this.buyer = buyer;
}
}
