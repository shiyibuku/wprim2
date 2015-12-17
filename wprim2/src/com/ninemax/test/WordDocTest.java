package com.ninemax.test;

import java.io.File;
import java.io.FileInputStream;

import org.apache.poi.hwpf.extractor.WordExtractor;

public class WordDocTest {

	public static void main(String[] args) {
		try {
			WordExtractor wordExt = new WordExtractor(new FileInputStream(new File("E:/pdf/test.doc")));
			String content = wordExt.getText();
			System.out.println(content);
			wordExt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
