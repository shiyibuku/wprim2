package com.ninemax.util.solr;

import org.apache.poi.POIXMLDocument;
import org.apache.poi.POIXMLTextExtractor;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.solr.handler.dataimport.Context;
import org.apache.solr.handler.dataimport.Transformer;
import org.apache.xmlbeans.XmlException;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by ninemax-jzh on 2015/12/11.
 */
public class MyTransformer extends Transformer {
    @Override
    public Object transformRow(Map<String, Object> map, Context context) {
        List<Map<String,String>> fields = context.getAllEntityFields();
        for(Map<String,String> field : fields){
            String isFilePath = field.get("isFilePath");
            if(isFilePath != null && isFilePath.equals("true")){
                String articleFilePath = (String) map.get("article");
                	String webRootPath = "D:/servers/apache-tomcat-8.0.21/webapps/wprim2";
                    String filePath = webRootPath + articleFilePath;
                    File file = new File(filePath);
                    if(file.exists()){
                    	//处理pdf文档
                        if(filePath.endsWith(".pdf")){
                        	try {
            					PdfReader reader = new PdfReader(filePath);
            					int pdfPages = reader.getNumberOfPages();
            					StringBuffer sb = new StringBuffer();
            					if(pdfPages != 0){
            						for (int i = 1; i <= pdfPages; i++) {
            							sb.append(PdfTextExtractor.getTextFromPage(reader, i));
            						}
            					}
            					//置换原数据中article字段的内容
            					map.put("article", sb.toString());
            				} catch (IOException e) {
            					e.printStackTrace();
            				}
                        //处理旧版doc文档
                        }else if(filePath.endsWith(".doc")){
                        	try {
        						WordExtractor wordExt = new WordExtractor(new FileInputStream(new File(filePath)));
        						String wordContent = wordExt.getText();
        						map.put("article", wordContent);
        						wordExt.close();
        					} catch (Exception e) {
        						e.printStackTrace();
        					}
                        //处理新版docx文档
                        }else if(filePath.endsWith(".docx")){
                        	try {
        						OPCPackage container = POIXMLDocument.openPackage(filePath);
        						try {
        							POIXMLTextExtractor ext = new XWPFWordExtractor(container);
        							map.put("article", ext.getText());
        							ext.close();
        						} catch (XmlException | OpenXML4JException e) {
        							e.printStackTrace();
        						}
        					} catch (IOException e) {
        						e.printStackTrace();
        					}
                        //置空article字段的值
                        }else{
                        	map.put("article", "");
                        }
                    }else{
                    	map.put("article","");
                    }
            }
        }
        return map;
    }
}
