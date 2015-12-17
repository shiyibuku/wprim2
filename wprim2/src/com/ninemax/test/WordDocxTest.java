package com.ninemax.test;

import java.io.IOException;

import org.apache.poi.POIXMLDocument;
import org.apache.poi.POIXMLTextExtractor;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.xmlbeans.XmlException;

public class WordDocxTest {

	public static void main(String[] args) {
		try {
			OPCPackage opcPackage = POIXMLDocument.openPackage("E:/pdf/test.docx");
			try {
				POIXMLTextExtractor ext = new XWPFWordExtractor(opcPackage);
				String content = ext.getText();
				System.out.println(content);
				ext.close();
			} catch (XmlException | OpenXML4JException e) {
				e.printStackTrace();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
