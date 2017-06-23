package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.Article;
import com.entity.Bbs;
import com.entity.Cart;
import com.entity.Cate;
import com.entity.Goods;
import com.entity.Orders;
import com.entity.Rebbs;
import com.entity.Topic;
import com.entity.Users;
import com.service.ArticleService;
import com.service.BbsService;
import com.service.CartService;
import com.service.CateService;
import com.service.GoodsService;
import com.service.OrdersService;
import com.service.RebbsService;
import com.service.TopicService;
import com.service.UsersService;
import com.util.VeDate;

public class IndexAction extends BaseAction {
	//
	private static final long serialVersionUID = 1L;
	private String id;
	private String msg;
	private String name;
	private String cond;
	private String num;
	private String username;
	private String password;
	private String repassword;
	private String newpassword;
	private String title;

	private Users users;
	private Topic topic;
	private Bbs bbs;
	private Rebbs rebbs;
	private Goods goods;
	private Cart cart;

	private Map<String, Object> map = new HashMap<String, Object>();

	private ArticleService articleService;
	private UsersService usersService;
	private CateService cateService;
	private OrdersService ordersService;
	private TopicService topicService;
	private RebbsService rebbsService;
	private BbsService bbsService;
	private GoodsService goodsService;
	private CartService cartService;

	private void init() {
		this.title = "购物网站";
		List<Cate> cateList = this.cateService.show();
		this.map.put("cateList", cateList);
	}

	public String index() {
		this.init();
		List<Cate> fList = this.cateService.front();
		List<Cate> frontList = new ArrayList<Cate>();
		for (Cate cate : fList) {
			List<Goods> goodsList = this.goodsService.front(cate.getCateid());
			cate.setGoodsList(goodsList);
			frontList.add(cate);
		}
		List<Article> articleList = this.articleService.front();
		this.map.put("articleList", articleList);
		this.map.put("frontList", frontList);
		return SUCCESS;
	}

	// 车辆信息
	public String cate() {
		this.init();
		List<Goods> goodsList = this.goodsService.checkCateid(this.id);
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	public String all() {
		this.init();
		List<Goods> goodsList = this.goodsService.show();
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	public String query() {
		this.init();
		List<Goods> goodsList = this.goodsService.check(this.name);
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	public String detail() {
		this.init();
		this.goods = this.goodsService.checkId(this.id);
		this.goods.setHits("" + (Integer.parseInt(this.goods.getHits()) + 1));
		this.goodsService.update(this.goods);
		List<Topic> topicList = this.topicService.checkGoodsid(this.id);
		this.map.put("topicList", topicList);
		this.map.put("tsize", topicList.size());
		return SUCCESS;
	}

	public String addTopic() {
		this.init();
		String userid = (String) this.session.get("userid");
		this.topic.setAddtime(VeDate.getStringDate());
		this.topic.setUsersid(userid);
		this.topicService.save(this.topic);
		return SUCCESS;
	}

	public String preGoods() {
		this.init();
		return SUCCESS;
	}

	public String addGoods() {
		this.init();
		String userid = (String) this.session.get("userid");
		this.goods.setAddtime(VeDate.getStringDateShort());
		this.goods.setHits("0");
		this.goods.setStatus("上架");
		this.goods.setSellnum("0");
		this.goods.setUsersid(userid);
		this.goodsService.save(this.goods);
		return SUCCESS;
	}
	
	public String preEdit() {
		this.init();
		this.goods = this.goodsService.checkId(this.id);
		return SUCCESS;
	}
	
	public String editGoods() {
		this.init();
		this.goodsService.update(this.goods);
		return SUCCESS;
	}
	

	public String myGoods() {
		this.init();
		String userid = (String) this.session.get("userid");
		List<Goods> goodsList = this.goodsService.checkUsersid(userid);
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	public String status() {
		this.init();
		if ("1".equals(this.name)) {
			this.cond = "上架";
		}
		if ("2".equals(this.name)) {
			this.cond = "下架";
		}
		this.goods = this.goodsService.checkId(this.id);
		this.goods.setStatus(this.cond);
		this.goodsService.update(this.goods);
		return SUCCESS;
	}

	public String addcart() {
		this.init();
		String userid = (String) this.session.get("userid");
		this.cart.setAddtime(VeDate.getStringDateShort());
		this.cart.setUsersid(userid);
		this.cartService.save(this.cart);
		return SUCCESS;
	}

	public String cart() {
		this.init();
		String userid = (String) this.session.get("userid");
		List<Cart> cartList = this.cartService.checkUsersid(userid);
		this.map.put("cartList", cartList);
		return SUCCESS;
	}

	public String deletecart() {
		this.init();
		this.cartService.delete(this.id);
		return SUCCESS;
	}

	public String preCheckout() {
		this.init();
		return SUCCESS;
	}

	public String addorder() {
		this.init();
		String userid = (String) this.session.get("userid");
		List<Cart> cartList = this.cartService.checkUsersid(userid);
		for (Cart c : cartList) {
			Orders orders = new Orders();
			orders.setAddtime(VeDate.getStringDateShort());
			orders.setGoodsid(c.getGoodsid());
			orders.setBuyerid(userid);
			orders.setContact(this.msg);
			orders.setNum(c.getNum());
			orders.setOrdercode(VeDate.getStringDatex());
			orders.setPrice(c.getPrice());
			orders.setReceiver(this.name);
			orders.setAddress(this.cond);
			orders.setSellerid(c.getGoods().getUsersid());
			orders.setStatus("未发货");
			orders.setTotal("" + (Double.parseDouble(c.getPrice()) * Double.parseDouble(c.getNum())));
			this.ordersService.save(orders);
			this.cartService.delete(c);
			this.goods = this.goodsService.checkId(c.getGoodsid());
			this.goods.setSellnum("" + (Integer.parseInt(this.goods.getSellnum()) + Integer.parseInt(c.getNum())));
			this.goods.setStorage("" + (Integer.parseInt(this.goods.getStorage()) - Integer.parseInt(c.getNum())));
			this.goodsService.update(this.goods);
		}

		return SUCCESS;
	}

	public String mysell() {
		this.init();
		String userid = (String) this.session.get("userid");
		List<Orders> ordersList = this.ordersService.checkSellerid(userid);
		this.map.put("ordersList", ordersList);
		return SUCCESS;
	}

	public String myorder() {
		this.init();
		String userid = (String) this.session.get("userid");
		List<Orders> ordersList = this.ordersService.checkBuyerid(userid);
		this.map.put("ordersList", ordersList);
		return SUCCESS;
	}

	// 新闻公告
	public String article() {
		this.init();
		List<Article> articleList = this.articleService.show();
		this.map.put("articleList", articleList);
		return SUCCESS;
	}

	public String read() {
		this.init();
		Article article = this.articleService.checkId(this.id);
		article.setHits("" + (Integer.parseInt(article.getHits()) + 1));
		this.articleService.update(article);
		this.map.put("article", article);
		return SUCCESS;
	}

	public String preLogin() {
		this.init();
		return SUCCESS;
	}

	public String login() {
		this.init();
		List<Users> usersList = this.usersService.checkUsername(this.users.getUsername());
		if (usersList.size() == 0) {
			return "usererror";
		} else {
			Users user = usersList.get(0);
			if (user.getPassword().equals(this.users.getPassword())) {
				this.session.put("userid", user.getUsersid());
				this.session.put("username", user.getUsername());
				this.session.put("realname", user.getRealname());
				this.session.put("users", user);
				this.session.put("role", user.getCate());
			} else {
				this.msg = "密码错误";
				return "usererror";
			}
		}
		return "success";
	}

	public String prePwd() {
		this.init();
		return SUCCESS;
	}

	public String editPwd() {
		List<Users> usersList = this.usersService.checkUsername(this.users.getUsername());
		if (usersList.size() == 0) {

		} else {
			Users users1 = usersList.get(0);
			if (users1.getPassword().equals(this.users.getPassword())) {
				users1.setPassword(this.repassword);
				this.usersService.update(users1);
				this.msg = "修改成功";
			} else {
				this.msg = "密码错误";
			}
		}
		return SUCCESS;
	}

	public String preReg() {
		this.init();
		return SUCCESS;
	}

	public String reg() {
		this.init();
		this.users.setRegdate(VeDate.getStringDateShort());
		this.usersService.save(this.users);
		return SUCCESS;
	}

	public String usercenter() {
		this.init();
		this.map.put("msg", null);
		return SUCCESS;
	}

	public String personal() {
		this.init();
		this.usersService.update(this.users);
		this.session.put("users", this.users);
		return SUCCESS;
	}

	// 退出系统
	public String exit() {
		this.msg = "";
		this.session.clear();
		return SUCCESS;
	}

	public String allbbs() {
		List<Bbs> bbsList = this.bbsService.show();
		this.map.put("bbsList", bbsList);
		return SUCCESS;
	}

	public String addbbs() {
		String userid = (String) this.session.get("userid");
		this.bbs.setUsersid(userid);
		this.bbs.setAddtime(VeDate.getStringDateShort());
		this.bbs.setHits("0");
		this.bbs.setRepnum("0");
		this.bbsService.save(this.bbs);
		return SUCCESS;
	}

	public String readbbs() {
		Bbs bbs = this.bbsService.checkId(this.id);
		bbs.setHits("" + (Integer.parseInt(bbs.getHits()) + 1));
		this.bbsService.update(bbs);
		List<Rebbs> rebbsList = this.rebbsService.checkBbsid(this.id);
		this.map.put("bbs", bbs);
		this.map.put("rebbsList", rebbsList);
		return SUCCESS;
	}

	public String repeat() {
		String userid = (String) this.session.get("userid");
		this.rebbs.setAddtime(VeDate.getStringDateShort());
		this.bbs.setUsersid(userid);
		this.rebbsService.save(this.rebbs);
		this.bbs = this.bbsService.checkId(this.rebbs.getBbsid());
		this.bbs.setRepnum("" + (Integer.parseInt(this.bbs.getRepnum()) + 1));
		this.bbsService.update(this.bbs);
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCond() {
		return cond;
	}

	public void setCond(String cond) {
		this.cond = cond;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public UsersService getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	public CateService getCateService() {
		return cateService;
	}

	public void setCateService(CateService cateService) {
		this.cateService = cateService;
	}

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public TopicService getTopicService() {
		return topicService;
	}

	public void setTopicService(TopicService topicService) {
		this.topicService = topicService;
	}

	public Bbs getBbs() {
		return bbs;
	}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}

	public Rebbs getRebbs() {
		return rebbs;
	}

	public void setRebbs(Rebbs rebbs) {
		this.rebbs = rebbs;
	}

	public RebbsService getRebbsService() {
		return rebbsService;
	}

	public void setRebbsService(RebbsService rebbsService) {
		this.rebbsService = rebbsService;
	}

	public BbsService getBbsService() {
		return bbsService;
	}

	public void setBbsService(BbsService bbsService) {
		this.bbsService = bbsService;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
