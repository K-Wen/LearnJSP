package com.test.db;

import java.util.HashMap;
import java.util.Map;

import com.test.bean.Emp;

public class DBUtil {
	public static Map<String, Emp> map = new HashMap<String, Emp>();
	static {
		map.put("101", new Emp("101", "AA", "123456", "AA@email.com"));
		map.put("102", new Emp("102", "BB", "123456", "BB@email.com"));
		map.put("103", new Emp("103", "CC", "123456", "CC@email.com"));
		map.put("104", new Emp("104", "DD", "123456", "DD@email.com"));
	}
	
	public static boolean vertifyEmp(Emp emp) {
		boolean isSuccess = false;
		for(String key : map.keySet()) {
			Emp e = map.get(key);
			if (emp.getAccount().equals(e.getAccount())
					&& emp.getPassword().equals(e.getPassword())) {
				isSuccess = true;
				break;
			}
		}
		return isSuccess;
	}
}
