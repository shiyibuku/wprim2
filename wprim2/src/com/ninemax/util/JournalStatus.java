package com.ninemax.util;

public class JournalStatus {
	//未提交
	public static final String UNSUBMITTED = "Unsubmitted";
	//已提交至NJSC
	public static final String SUBMITTEDTONJSC = "submitted to NJSC";
	//NJSC评审中
	public static final String REVIEWEDBYNJSC = "reviewed by NJSC";
	//提交至RJSC
	public static final String SUBMITTEDTORJSC = "submitted to RJSC";
	//NJSC驳回
	public static final String REJECTEDBYNJSC = "rejected by NJSC";
	//RJSC驳回
	public static final String REJECTEDBYRJSC = "rejected by RJSC";
	//RJSC评审中
	public static final String REVIEWEDBYRJSC = "reviewed by RJSC";
	//评审通过
	public static final String APPROVEDBYRJSC = "approved by RJSC";
	//终止
	public static final String SUSPENDED = "suspended";
}
