package com.ninemax.util;

public class PageNumberUtil {

	public static int handlePageNumber(String pageNumber){
		if(pageNumber == null){
			return 1;
		}
		if(pageNumber.matches("[0-9]+")){
			return Integer.valueOf(pageNumber);
		}else{
			return 1;
		}
	}
	
	public static String availablePageNumber(String pageNumber){
		if(pageNumber == null){
			return "1";
		}
		if(pageNumber.matches("[0-9]+")){
			return pageNumber;
		}else{
			return "1";
		}
	}
}
