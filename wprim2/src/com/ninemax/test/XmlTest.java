package com.ninemax.test;

import java.io.File;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.ninemax.service.impl.ArticleServiceImpl;

public class XmlTest {

	public static void main(String[] args) throws DocumentException {
		SAXReader reader = new SAXReader();
		Document document = reader.read(new File("e:/ArticleSet1.xml"));
		Element root = document.getRootElement();
		@SuppressWarnings("unchecked")
		Iterator<Element> it = root.elementIterator("Article");
		while(it.hasNext()){
			Element articleOutside = it.next();
			Element journalOutside = articleOutside.element("Journal");
			String country = journalOutside.elementText("Country");
			System.out.println(country);
		}
	}
}
