package com.ninemax.service;

import java.util.List;
import java.util.Map;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.upload.UploadFile;
import com.ninemax.model.Journal;

public interface IJournalService {
	// 新增期刊名录
	void save(Record curr_user, String journalTitle,
			String VernacularJournalTitle, String country, String Abbreviation,
			String ISSN1, String ISSN2, String EISSN1, String EISSN2,
			String CN1, String CN2, String StartYear, String start_issue,
			String start_volume, String Language, String Sponsor,
			String edit_department, String publisher, UploadFile picture,
			String Description, String EditorInChief, String OfficeAddress,
			String TelephoneNumber, String EditorEmail, String WebSite,
			String IssuesNumber, String EditorsNumber, String ReviewersNumber,
			String InternationReviewersNumber, String ReceivedRatioNumber,
			String EachPaper, String PublishedRatioNumber, String[] OtherKu,
			String AccessStatus, String FeePapers, UploadFile journalFile,
			String saveButton);

	// 查询某一个期刊名录
	Record queryJournal(int id, Record curr_user);

	// 更新期刊名录
	void update(Journal journal, int journalId, String[] OtherKu, String ISSN,
			String EISSN, String CN);

	// 修改
	void modify(String journalTitle, String VernacularJournalTitle,
			String country, String publisher, String EditorInChief,
			String EditorEmail, String Abbreviation, String StartYear,
			String start_volume, String start_issue, UploadFile fileCover,
			String Description, String OfficeAddress, String TelephoneNumber,
			String WebSite, String IssuesNumber, String EditorsNumber,
			String ReviewersNumber, String InternationReviewersNumber,
			String ReceivedRatioNumber, String EachPaper,
			String PublishedRatioNumber, String[] OtherKu, String AccessStatus,
			String FeePapers, UploadFile fileCountrySimple, String ISSN,
			String EISSN, String CN, int JournalId);

	// 删除
	void delete(int journalId, Record curr_user);

	// 查找期刊名录
	Object search(Record curr_user, String pageNumber, String journalTitle,
			String country, String reviewStatus, String year);

	// 计算显示页码
	Object countPageNumberList(int handlePageNumber, int size);

	// 获取所有的评审状态
	Object getAllReviewStatus();

	// 评审操作
	Object review(Record sessionAttr, String para, String[] parameterValues);

	// 查询所有国家
	List<Record> findAllCountry();

	// 评审（agree/disagree/comment）
	void vote(Record curr_user, Integer journalId, String voteType,
			String comment, Integer isAgree);

	// 获取投票评论评审内容
	Object getVote(Record curr_user, Integer journalId, String voteType);

	// 查找已审批通过的期刊名录
	Page<Record> findAllApproved(Record curr_user, int pageNumber,
			String journalTitle, String startWith, String newsroom,
			String country);

	// 检查用户是否有创建期刊名录的权限
	boolean canCreateNewJournal(Record curr_user);

	// 设置编辑部参数
	Object setNewsroom(Record curr_user);

	// 设置国家参数
	Object setCountry(Record curr_user);

	// 查找期刊名录的详细信息
	Object findJournalById(Integer journalId);

	// 根据期刊目录的id查找对应的期刊列表，并按照年份分组
	Object findJournalVolumeListOrderByPubYearByJournalId(int journalId);

	// 根据具体期刊的id查找期刊名录的信息
	Object findJournalByJournalVolumeId(int journalVolumeId);

	// 期刊名录新增
	void addJournal(Journal journal, String[] OtherKu, String ISSN,
			String EISSN, String CN,Record user,String review_status);

	// 判断评审主页的哪些列需要隐藏
	Object judgeShowColumns(Record curr_user);

	// 期刊保存
	void saveVolume(Record curr_user, String Crtime, String PubDate, int JID,
			String Issue, String Volume);

	// 根据用户,判断用户权限
	Map<String, Object> createJournal(Record curr_user);

	// 查找所有可选年份
	Object findAllAvailableYears();

	// 查询某一个期刊
	Record queryJournalVolume(int id, Record curr_user);

	// 删除期刊
	void deleteJournalVolume(Integer journalVolumeId, Record curr_user);

	// 根据id查询期刊信息
	Object findJournalVolumeById(Integer journalVolumeId);

	// 更新期刊
	void updateVolume(Record curr_user, String Crtime, String PubDate, int JID,
			String Issue, String Volume);

	// 判断评审主页哪些评审按钮需要隐藏
	Object judgeShowReviewButtons(Record curr_user, List<Record> journalList);

	// 查找期刊的投票评审内容
	Object previewVote(Integer journalId, String type, Integer isAgree);

}
