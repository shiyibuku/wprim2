package com.ninemax.util.solr;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrQuery.ORDER;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;

import com.jfinal.plugin.activerecord.Record;

/**
 * Solr查询工具
 * @author ninemax-jzh
 *
 */
public class SolrQueryUtil {

	/**
	 * Solr查询方法
	 * @param param 查询条件
	 * @param orders 字段排序
	 * @param start 结果起始索引
	 * @param size 结果集大小
	 * @return JFinal的Record类型，totalRow结果集大小，totalPage总页数,list结果集
	 * @throws SolrServerException
	 * @throws IOException
	 */
	public static Record query(String param,Map<String,String> orders,int start,int size) throws SolrServerException, IOException{
		//结果
		Record result = new Record();
		//获取SolrClient
		SolrClient client = SolrClientUtil.getSolrClient();
		//创建SolrQuery对象，设置查询参数
		SolrQuery query = new SolrQuery();
		if(param == null || param.trim().equals("")){
			param = "*:*";
		}
		query.setQuery(param);
		//开启高亮
		query.setHighlight(true);
		query.addHighlightField("articleTitle");
		query.setHighlightSimplePre("<h1>");
		query.setHighlightSimplePost("</h1>");
		if(orders != null && orders.size() != 0){
			for(Entry<String, String> order : orders.entrySet()){
				query.addSort(order.getKey(), order.getValue().equalsIgnoreCase("desc") ? ORDER.desc : ORDER.asc);
			}
		}
		QueryResponse response0 = client.query(query);
		SolrDocumentList docList0 = response0.getResults();
		query.setStart(start);
		query.setRows(size);
		//执行查询并获取结果对象QueryResponse
		QueryResponse response = client.query(query);
		SolrDocumentList docList = response.getResults();
		if(docList != null){
			int docListSize0 = docList0.size();
			//设置查询总结果数
			result.set("totalRow", docListSize0);
			//计算总页数
			result.set("totalPage", docListSize0 % size == 0 ? docListSize0 / size : docListSize0 / size + 1);
			//处理高亮
			Map<String, Map<String, List<String>>> highMap = response.getHighlighting();
			for(SolrDocument doc : docList){
				doc.setField("articleTitle", highMap.get(doc.getFieldValue("id").toString()).get("articleTitle"));
			}
			//设置结果集
			result.set("list", docList);
		}
		return result;
	}
}
