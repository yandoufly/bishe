package com.wjw.test;

import java.util.Random;

public class TestUser {
	public void ss(){
		
	}
	
	public static void main(String[] args) {
		//生成用户实体类数据
		Random random = new Random();
		for(int i = 0; i < 200; i++){
			String account = "'13003" + (random.nextInt(8)+1) + "0" + (random.nextInt(6)+1) + (i%30+1) + "'";
			String name = "'name" + i+"'";
			String idnumber = "'450481199"+random.nextInt(10)+"030" + random.nextInt(10) + random.nextInt(9)+ random.nextInt(9)+ random.nextInt(9)+ random.nextInt(9) + "'";
			int sex = random.nextInt(2);
			String profession = "'教师'";
			String specialty = "'软件工程'";
			String birthday = "'199"+random.nextInt(9)+"-02-2"+random.nextInt(9) + "'";
			String cellphone1 = "'13056201842'";
			String QQ = "'32615540'";
			String email = "'qq@qq.com'";
			String address = "'桂林电子科技大学花江校区'";
			int role = random.nextInt(3);
			
	String sql = "insert into "
		+ "user(account, password, name, idnumber, sex, profession, specialty, birthday, cellphone1, cellphone2, QQ, email, address, role) values("
		+account+","
		+"'123456'"+","
		+name+","
		+idnumber+","
		+sex+","
		+profession+","
		+specialty+","
		+birthday+","
		+cellphone1+","
		+cellphone1+","
		+QQ+","
		+email+","
		+address+","
		+role
		+ ")";
			System.out.println(sql+";");
		}
	}
}
