package com.ninemax.util;

public class ArticleUtil {

	//ISSN(Year)Volume:Issue<FirstPage:论文内容标识>校验码
	//论文内容标识：论文题名前6个单词的首字母（如不超过6，则为全部）
	public static final String generateUniqueArticleCode(String issn, String year, String volume, String issue, String firstPage, String articleTitle){
		//论文内容标识
		String paperContentIdentification = "";
		if(articleTitle != null){
			String[] articleTitles = articleTitle.split(" ");
			if(articleTitles.length <= 6){
				for(String str : articleTitles){
					paperContentIdentification += str.substring(0,1);
				}
			}else{
				for(int i = 0;i < 6;i++){
					paperContentIdentification += articleTitles[i].substring(0, 1);
				}
			}
		}
		
		//除校验码以外的字符串
		String withOutCheckCode = issn + "(" + year + ")" + volume + ":" + issue + "<" + firstPage + ":" + paperContentIdentification + ">";
		
		//计算校验码
		char[] chars = withOutCheckCode.toCharArray();
		int charsLength = chars.length;
		int[] ints = new int[charsLength];
		if(chars != null && charsLength != 0){
			for (int i = 0; i < charsLength; i++) {
				char c = chars[i];
				String c2s = String.valueOf(c);
				if(c2s.matches("\\d")){
					ints[i] = Integer.valueOf(c2s);
				}else if(c2s.matches("[A-Z]")){
					int c2ascii = c;
					ints[i] = c2ascii - 55;
				}else if(c2s.matches("[a-z]")){
					int c2ascii = c;
					ints[i] = c2ascii - 87;
				}else{
					ints[i] = 36;
				}
			}
			
			int numberNeedMultiplyBy3 = 0;
			int anotherNumber = 0;
			if(charsLength % 2 == 0){
				for (int i = 0; i < charsLength; i++) {
					int intTemp = ints[i];
					numberNeedMultiplyBy3 += (i % 2 == 0) ? 0 : intTemp;
					anotherNumber += (i % 2 == 0) ? intTemp : 0;
				}
			}else{
				for (int i = 0; i < charsLength; i++) {
					int intTemp = ints[i];
					numberNeedMultiplyBy3 += (i % 2 == 0) ? intTemp : 0;
					anotherNumber += (i % 2 == 0) ? 0 :intTemp;
				}
			}
			
			int finalNumber = 37 - ((numberNeedMultiplyBy3 * 3 + anotherNumber) % 37);
			
			if(finalNumber >= 0 && finalNumber <= 9){
				return withOutCheckCode + String.valueOf(finalNumber);
			}else if(finalNumber >= 10 && finalNumber <= 35){
				return withOutCheckCode + String.valueOf((char)(finalNumber + 55));
			}else{
				return withOutCheckCode + "#";
			}
		}
		
		return null;
	}
	
}
