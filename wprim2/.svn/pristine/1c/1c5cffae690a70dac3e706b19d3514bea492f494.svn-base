package com.ninemax.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 评审动作以及角色對應的評審權限
 * 
 * @author Darker
 * 
 */
public class ActionStatus {

	// 提交至NJSC
	public static final String UNSUBMITTED_NJSC = "Unsubmitted_submitted to NJSC";
	// NJSC驳回
	public static final String NJSC_REJECTED = "reviewed by NJSC$submitted to NJSC_rejected by NJSC";
	// 提交到RJSC
	public static final String RNJSC_RJSC = "reviewed by NJSC$submitted to NJSC_submitted to RJSC";
	// RJSC驳回
	public static final String RJSC_REJECTED = "reviewed by RJSC$submitted to RJSC_rejected by RJSC";
	// 评审通过
	public static final String RJSC_APPROVED = "reviewed by RJSC$submitted to RJSC_approved by RJSC";
	//终止
	public static final String APPROVED_SUSPENDED = "approved by RJSC_suspended";
	//重新激活
	public static final String RECALL = "suspended_approved by RJSC";
	
	//分配角色评审权限
	//系统管理员
	public static final List<String> getSystemAdministratorActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(UNSUBMITTED_NJSC);
		result.add(RNJSC_RJSC);
		result.add(RJSC_APPROVED);
		result.add(NJSC_REJECTED);
		result.add(RJSC_REJECTED);
		result.add(APPROVED_SUSPENDED);
		result.add(RECALL);
		return result;
	}
	
	//期刊编辑部
	public static final List<String> getJournalEditorialDepartmentActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(UNSUBMITTED_NJSC);
		return result;
	}
	
	//国家级期刊评委
	public static final List<String> getNationalJournalReviewExpertActionStatus(){
		List<String> result = new ArrayList<String>();
		return result;
	}
	
	//国家级期刊评委主席
	public static final List<String> getChairmanOfNationalJournalReviewCommitteeActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(NJSC_REJECTED);
		result.add(RNJSC_RJSC);
		return result;
	}
	
	//国家联络员
	public static final List<String> getNationalLiaisonerActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(UNSUBMITTED_NJSC);
		result.add(RNJSC_RJSC);
		result.add(NJSC_REJECTED);
		result.add(APPROVED_SUSPENDED);
		result.add(RECALL);
		return result;
	}
	
	//国家数据管理员
	public static final List<String> getNationalDataManagerActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(UNSUBMITTED_NJSC);
		result.add(RNJSC_RJSC);
		result.add(NJSC_REJECTED);
		result.add(APPROVED_SUSPENDED);
		result.add(RECALL);
		return result;
	}
	
	//国际期刊评委
	public static final List<String> getRegionalJournalReviewExpertActionStatus(){
		List<String> result = new ArrayList<String>();
		return result;
	}
	
	//国际期刊评委主席
	public static final List<String> getChairmanOfRegionalJournalReviewCommitteeActionStatus(){
		List<String> result = new ArrayList<String>();
		result.add(RJSC_REJECTED);
		result.add(RJSC_APPROVED);
		result.add(APPROVED_SUSPENDED);
		result.add(RECALL);
		return result;
	}
}
