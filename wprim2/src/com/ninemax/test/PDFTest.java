package com.ninemax.test;

import java.io.IOException;

import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;

public class PDFTest {

	public static void main(String[] args) {
		try {
			PdfReader reader = new PdfReader("E:/pdf/google.pdf");
			int pageNumber = reader.getNumberOfPages();
			String content = PdfTextExtractor.getTextFromPage(reader, pageNumber);
			System.out.println("pageNumber:" + pageNumber);
			System.out.println(content);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
