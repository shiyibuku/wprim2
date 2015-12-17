package com.ninemax.util.solr;

import java.io.IOException;
import java.util.Properties;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.HttpSolrClient;

/**
 * 获取SolrClient
 * @author ninemax-jzh
 *
 */
public class SolrClientUtil {

	private static SolrClient client = null;
	
	public static SolrClient getSolrClient(){
		if(client == null){
			synchronized (SolrClientUtil.class) {
				if(client == null){
					client = new HttpSolrClient(getSolrServerUrl());
				}
			}
		}
		return client;
	}
	
	private static String getSolrServerUrl(){
		String result = null;
		Properties prop = new Properties();
		try {
			prop.load(SolrClientUtil.class.getClassLoader().getResourceAsStream("solr.properties"));
			result = prop.getProperty("server");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
}
