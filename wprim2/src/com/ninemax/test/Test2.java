package com.ninemax.test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test2 {
	
	public static void main(String[] args) {
		
		SimpleDateFormat df= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		
		System.out.println(df.format(new Date()).toString()
				.substring(0, 4));
	}
}
