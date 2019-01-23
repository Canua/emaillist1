package com.douzon.emaillist.dao.test;

import java.util.List;

import com.douzon.emaillist.vo.EmaillistVo;
import com.duzon.emaillist.dao.EmaillistDao;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		getListTest();
	}

	public static void getListTest() {
		List<EmaillistVo> list = new EmaillistDao().getList();
		for (EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}
}
