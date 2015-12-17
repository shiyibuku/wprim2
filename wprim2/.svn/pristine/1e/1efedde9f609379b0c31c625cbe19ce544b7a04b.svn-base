package com.ninemax.test;

import java.io.IOException;
import java.util.List;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocument;

import com.jfinal.plugin.activerecord.Record;
import com.ninemax.util.solr.SolrQueryUtil;

public class SolrTest {

	public static void main(String[] args) throws SolrServerException, IOException {
		Record result = SolrQueryUtil.query("articleTitle:标题", null, 0, Integer.MAX_VALUE);
		System.out.println("totalRow:" + result.getInt("totalRow"));
		System.out.println("totalPage:" + result.getInt("totalPage"));
		List<SolrDocument> list = result.get("list");
		if(list.size() != 0){
			for(SolrDocument doc : list){
				System.out.println("articleTitle:" + doc.getFieldValue("articleTitle"));
			}
		}
	}
}
