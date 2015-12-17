package com.ninemax.util;
import java.util.List;

public enum Role_ActionStatus {
	//系統管理員
	SYSTEMADMINISTRATORACTIONSTATUS(1,ActionStatus.getSystemAdministratorActionStatus())
	//期刊編輯部
	,JOURNALEDITORIALDEPARTMENT(2,ActionStatus.getJournalEditorialDepartmentActionStatus())
	//國家級期刊評委
	,NATIONALJOURNALREVIEWEXPERT(3,ActionStatus.getNationalJournalReviewExpertActionStatus())
	//國家聯絡員
	,NATIONALLIAISONER(4,ActionStatus.getNationalLiaisonerActionStatus())
	//國家數據管理員
	,NATIONALDATAMANAGER(5,ActionStatus.getNationalDataManagerActionStatus())
	//國家級期刊評委主席
	,CHAIRMANOFNATIONALJOURNALREVIEWCOMMITTEE(6,ActionStatus.getChairmanOfNationalJournalReviewCommitteeActionStatus())
	//國際期刊評委
	,REGIONALJOURNALREVIEWEXPERT(7,ActionStatus.getRegionalJournalReviewExpertActionStatus())
	//國際期刊評委主席
	,CHAIRMANOFREGIONALJOURNALREVIEWCOMMITTEE(8,ActionStatus.getChairmanOfRegionalJournalReviewCommitteeActionStatus());
	
	private Role_ActionStatus(int roleId,List<String> roleActions){
		this.roleId = roleId;
		this.roleActionStatus = roleActions;
	}
	
	private int roleId;
	
	private List<String> roleActionStatus;

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public List<String> getRoleActionStatus() {
		return roleActionStatus;
	}

	public void setRoleActionStatus(List<String> roleActionStatus) {
		this.roleActionStatus = roleActionStatus;
	}

}
