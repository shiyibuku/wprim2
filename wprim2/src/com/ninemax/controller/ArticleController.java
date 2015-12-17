package com.ninemax.controller;


import java.util.Map;

import org.dom4j.DocumentException;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.upload.UploadFile;
import com.ninemax.controller.base.BaseController;
import com.ninemax.model.Article;
import com.ninemax.service.IArticleService;
import com.ninemax.service.IJournalService;
import com.ninemax.service.impl.ArticleServiceImpl;
import com.ninemax.service.impl.IJournalServiceImpl;
import com.ninemax.util.FilesUtil;
import com.ninemax.util.PageNumberUtil;

public class ArticleController extends BaseController {

	private static IArticleService articleService = new ArticleServiceImpl();
	private static IJournalService journalService = new IJournalServiceImpl();
	
	//下载论文附录文件
	public void downloadAppendix(){
		articleService.downloadAppendix(getResponse(),getPara("article"));
		renderNull();
	}
	
	//查找论文信息
	public void articleDetail(){
		Record article = (Record) articleService.findArticleById(getParaToInt("articleId"));
		setAttr("article",article);
		setAttr("journal", journalService.findJournalById(article.getInt("JID")));
		setAttr("journalVolume", journalService.findJournalVolumeById(article.getInt("VID")));
		render("/article/article_detail.jsp");
	}
	
	//根据具体期刊的id查找期刊所含论文信息和期刊名录的信息
	public void articleList(){
		int journalVolumeId = getParaToInt("journalVolumeId");
		Page<Record> articleList = articleService.findArticlesByJournalVolumeId(journalVolumeId,PageNumberUtil.handlePageNumber(getPara("pageNumber")));
		setAttr("articleList", articleList);
		setAttr("pageNumberList", journalService.countPageNumberList(articleList.getPageNumber(), articleList.getTotalPage()));
		setAttr("journal", journalService.findJournalByJournalVolumeId(journalVolumeId));
		setAttr("journalVolumeId", journalVolumeId);
		setAttr("journalVolume", journalService.findJournalVolumeById(journalVolumeId));
		render("/article/article_list.jsp");
	}
	
	//导入期刊论文xml文件数据
	public void importXml() throws DocumentException{
		Record curr_user = getSessionAttr("curr_user");
		if(curr_user == null){
			render("/index.jsp");
		}else{
			UploadFile xmlFile = getFile("xmlFile");
			@SuppressWarnings("unchecked")
			Map<String, Integer> importResult = (Map<String, Integer>) articleService.importXml(xmlFile,curr_user);
			setSessionAttr("importResult", importResult);
			//记录导入日志
			articleService.log(curr_user,importResult,xmlFile);
			redirect("/admin/journal/website",true);
		}
	}
	
	// 跳转到论文创建
	public void createArticle() {
		//期刊ID
		setAttr("journalVolumeId", getPara("journalVolumeId"));
		render("/article/createArticle.jsp");
	}

	// 论文保存
	public void saveArticle() throws Exception {
			// 上传论文
			UploadFile articleFile=getFile("article");
			// 检查上传路径And再上传到指定文件夹下
			FilesUtil.ArticleFileAndExistArticleFile(articleFile);
			// 获得用户信息
			Record user=getSessionAttr("curr_user");
			
			String[] authorList=getRequest().getParameterValues("Author");
			String[] affiliationList=getRequest().getParameterValues("Affiliation");
			
			Article article = getModel(Article.class);
			
			int journalVolumeId=getParaToInt("journalVolumeId");
			
			articleService.saveArticle(articleFile, user, authorList, affiliationList,article,journalVolumeId,getPara("article.ArticleTitle"),getPara("article.FirstPage"));
			// 跳转到期刊页面
			redirect("/admin/article/articleList?journalVolumeId="+journalVolumeId);
		
		
	}

}
