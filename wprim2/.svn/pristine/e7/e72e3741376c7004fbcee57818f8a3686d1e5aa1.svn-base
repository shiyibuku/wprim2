<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">WPRIM &gt;
          <a href="index.jsp">Home</a>&gt;
          <span> Journal Update</span>
        </div>
    	<form id="myForm" method="post" action="admin/journal/updateJournal" enctype="multipart/form-data">
    	<input type="hidden" name="JournalId" value="${journal.JournalId}"><br>
    	<input type="hidden" name="journal.globalid" value="${journal.globalid}">
    	<table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">	
    	<tr>
		    <th colspan="2"> &nbsp;&nbsp; <b>Basic Information</b> </th>
		</tr>
    	<tr>
    		<td style="width: 220px;">
    		<label>Country:</label>
    		</td>
    		<td style="height: 35px;">
			<select  name="journal.country"  >
				<option value="${journal.country}" selected>${journal.country}</option>
			</select>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
    	 <tr>
    		<td style="width: 220px;">
    		<label>JournalTitle:</label>
    		</td>
		   	<td style="height: 35px;">
			<input type="text" name="journal.journalTitle" value="${journal.journalTitle }" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>VemacularJournalTitle:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.VernacularJournalTitle" value="${journal.VernacularJournalTitle}" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<label>Abbreviation:</label>
    		</td>
    		<td style="height: 35px;">
			<input type="text" name="journal.Abbreviation"  value="${journal.Abbreviation}" style="width:360px;"/>
			</td>
		</tr>
			<tr>
    		<td style="width: 220px;">
			<label>ISSN:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="ISSN1" value="${journal.ISSN.split('-')[0]}" />&mdash;
			<input type="text" name="ISSN2" value="${journal.ISSN.split('-')[1]}" />&nbsp;
			<span style="color:red">*</span>(eg:1980-0524)
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>EISSN:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EISSN1" value="${journal.EISSN.split('-')[0]}" />&mdash;
			<input type="text" name="EISSN2" value="${journal.EISSN.split('-')[1]}" />&nbsp;
			<span >(eg:1980-0524)</span>
			</td>
		</tr>
		<tr>
			<c:if test="${journal.country=='China'}">
    		<td style="width: 220px;">
			<label>CN:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="CN1"  value="${journal.CN.split('-')[0]}"/>&mdash;
			<input type="text" name="CN2"  value="${journal.CN.split('-')[1]}"/>&nbsp;
			<span>(eg:11-9284/R)</span> 
			</td>
			</c:if>
		</tr>
		<tr>
    		<td style="width: 220px;">	
			<label>StartYear:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.StartYear" value="${journal.StartYear}"  style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">	
			<label>Start_Issue:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.start_issue" value="${journal.start_issue}"   value="1" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">	
			<label>Start_Volume:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.start_volume" value="${journal.start_volume}"   value="1" style="width:360px;"/>
			</td>
		</tr>
		<tr>
			<td style="width: 220px;">
			<label>Language:</label>
			</td>
			<td style="width: 35px;">
			<input type="text" name="journal.Language" value="${journal.Language}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Sponsor: </label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.Sponsor" value="${journal.Sponsor}" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Editorial Office: </label>
			</td>
			<td style="height: 35px;">
			<input id="Edit" type="text"  name="journal.edit_department" value="${journal.edit_department}" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>publisher:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.publisher" value="${journal.publisher}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">	
    		<input type="hidden" name="journal.cover" value="${journal.cover}" />
			<label>cover:</label>
			</td>
			<td style="height: 35px;">
			<input type="file" id="cover1" name="cover" value="${journal.cover}"/>
			<span id="cover2">${journal.cover.split('/')[3]}</span>
			<span style="color:red">*</span><br>
			&nbsp;&nbsp;(Size:185x275 &nbsp; Type： .jpg only)
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Description:</label>
			</td>
			<td style="height: 35px;">
			<textarea  style="width: 360px; height: 100px; overflow: auto;"  name="journal.Description" >${journal.Description}</textarea>
			<p>
		        &nbsp;&nbsp; Less than 1000 words.
		    </p>
			</td>
		</tr>
		<tr>
		    <th colspan="2"> &nbsp;&nbsp; <b>Contact Information</b> </th>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>EditorInChief:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.EditorInChief" value="${journal.EditorInChief}"  style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>OfficeAddress:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.OfficeAddress" value="${journal.OfficeAddress}" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>TelephoneNumber:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.TelephoneNumber" value="${journal.TelephoneNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>EditorEmail:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.EditorEmail" value="${journal.EditorEmail}" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Website:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.WebSite" value="${journal.WebSite}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
			<th colspan="2"> &nbsp;&nbsp; <b>Statistical Data</b> </th>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>NPublication Frequency(per issue):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.IssuesNumber" value="${journal.IssuesNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of Editors:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.EditorsNumber" value="${journal.EditorsNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of Reviewers:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.ReviewersNumber" value="${journal.ReviewersNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of International Reviewers:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.InternationReviewersNumber" value="${journal.InternationReviewersNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<!-- Acceptance Ratio -->
			<label>Number of Published /Number of Received(each year):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.ReceivedRatioNumber" value="${journal.ReceivedRatioNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Average Number of References of each Paper:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.EachPaper" value="${journal.EachPaper}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<!-- Fund Paper Ratio -->	
			<label>Number of Fund Paper / Number of Published (each year):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="journal.PublishedRatioNumber" value="${journal.PublishedRatioNumber}" style="width:360px;"/>
			</td>
		</tr>
		<tr>
			<td style="width: 220px;">
			<label>Besides WPRIM, is it indexed by other database?</label>
			</td>
			<td style="width: 35px;">
			<input ${fn:contains(journal.OtherKu,'PubMed') ? 'checked' : ''} class="checkbox" type="checkbox" rel="PubMed" />PubMed&nbsp;
			<input ${fn:contains(journal.OtherKu,'Web of Science') ? 'checked' : ''} class="checkbox" type="checkbox" rel="Web of Science" />Web of Science&nbsp;
			<input ${fn:contains(journal.OtherKu,'EMBASE') ? 'checked' : ''} class="checkbox" type="checkbox" rel="EMBASE" />EMBASE&nbsp;
			<input ${fn:contains(journal.OtherKu,'Scopus') ? 'checked' : ''} class="checkbox" type="checkbox" rel="Scopus" />Scopus&nbsp;
			<c:if test="${not empty journal.SingleKu}">
				<input id="checkbox1" name="checkbox" class="checkbox" type="checkbox" checked />Other&nbsp;
				<input id="other" type="text" name="journal.SingleKu" value="${journal.SingleKu}">
			</c:if>
			<c:if test="${empty journal.SingleKu}">
				<input id="checkbox1" name="checkbox" class="checkbox" type="checkbox"/>Other&nbsp;
				<input id="other" type="text" name="journal.SingleKu">
			</c:if>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Open Access Status:</label>
			</td>
			<td style="height: 35px;">
			<input ${fn:contains(journal.AccessStatus,'Not OA') ? 'checked' : ''} name="radio1" class ="radio1" type="radio" rel="Not OA"/>Not OA&nbsp;
			<input ${fn:contains(journal.AccessStatus, 'DOAJ registered') ? 'checked' : '' } name="radio1" class ="radio1" type="radio" rel="DOAJ registered" />DOAJ registered&nbsp;
			<input ${fn:contains(journal.AccessStatus, 'OA,but not registered in DOAJ') ? 'checked': '' } name="radio1" class ="radio1" type="radio" rel="OA,but not registered in DOAJ " />OA,but not registered in DOAJ 
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Publication fee of Papers:</label>
			</td>
			<td style="height: 35px;">
			<input ${fn:contains(journal.FeePapers,'Charged')? 'checked' : ''} name="radio2" class ="radio2" type="radio" rel="Charged" />Charged&nbsp;
			<input ${fn:contains(journal.FeePapers,'Not Charged')? 'checked': ' '} name="radio2" class ="radio2" type="radio" rel="Not Charged" />Not Charged
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<input type="hidden" name="journal.CountrySimple" value="${journal.CountrySimple}">
			<label>Sample:</label>
			</td>
			<td style="height: 35px;">
			<input type="file" id="CountrySimple1" name="CountrySimple" value="${journal.CountrySimple}">
			<span id="CountrySimple2">${journal.CountrySimple.split('/')[3] }</span>
			<span style="color:red">*</span><br>
			&nbsp;&nbsp;(PDF Document of the Latest Issue，including all pages!)
			</td>
		</tr>
		</table><br>
		<div class="cz">	
			<button type="submit" >Save</button>&nbsp;
			<a href="admin/journal/findAll"><button type="button">Cancel</button></a>
		</div>
		<!-- 单复选框 -->
		<div style="display:none" id="checkboxContainer">
			<c:forEach items="${fn:split(journal.OtherKu,',')}" var="ku">
				<c:if test="${ku!=''}">
				<input id="${ku}" name="journal.OtherKu" type="hidden" value="${ku}">
				</c:if>
			</c:forEach>
		</div>
		<div style="display:none" id="radio1Container">
			<input id="${journal.AccessStatus}" name="journal.AccessStatus" type="hidden" value="${journal.AccessStatus}">
		</div>
		<div style="display:none" id="radio2Container">
			<input id="${journal.FeePapers}" name="journal.FeePapers" type="hidden" value="${journal.FeePapers}">
		</div>
    	</form>
    </div>
   	<div class="r_bot"></div>
  </div>
  </div>
  <div class="footer">
  <div class="copyright"> ©2015 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>
<script src="static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="static/js/jquery.validate.min.js"></script>
<script type="text/javascript">
//点击单复选框
$(function(){
	
	$("#myForm").validate({
		rules:{
			'journal.journalTitle':{
				required:true,
				rangelength:[1,20],
			},
			'journal.VernacularJournalTitle':{
				required:true,
				rangelength:[1,20],
			},
			ISSN2:{
				required:true,
				rangelength:[4,4],
				disgits:true,
			},
			'journal.Sponsor':{
				required:true,
				rangelength:[1,20],
			},
			'journal.edit_department':{
				required:true,
			},
			'journal.OfficeAddress':{
				required:true,
				minlength:1,
			},
			'journal.EditorEmail':{
				required:true,
				email:true,
			},
			'journal.WebSite':{
				required:true,
				url:true,
			}
		},
		messages:{
			'journal.journalTitle':{
				required:"JournalTitle is not allowed to be empty",
				rangelength:"Length between 1 and 20",
			},
			'journal.VernacularJournalTitle':{
				required:"VernacularJournalTitle is not allowed to be empty",
				rangelength:"Length between 1 and 20",
			},
			ISSN2:{
				required:"ISSN is not allowed to be empty",
				rangelength:"The length is only 4",
				disgits:"Must be an integer",
			},
			'journal.Sponsor':{
				required:"Sponsor is not allowed to be empty",
				rangelength:"Length between 1 and 20",
			},
			'journal.edit_department':{
				required:"Editorial Office is not allowed to be empty",
			},
			'journal.OfficeAddress':{
				requried:"OfficeAddress is not allowed to be empty",
			},
			'journal.EditorEmail':{
				required:"EditorEmail is not allowed to be empty",
				email:"You must enter the correct form of e-mail",
			},
			'journal.WebSite':{
				required:"WebSite is not allowed to be empty",
				url:"You must enter the correct URL",
			}
		}
	});
	
	$(".checkbox").click(function(){
		
		var checkboxName = $(this).attr("rel");
		
		if(checkboxName=='Web of Science'){
			if(this.checked){
				$("#checkboxContainer").append($("<input id='" + 'Science' + "' type='hidden' name='journal.OtherKu' value='" + checkboxName + "'>"));
			}else{
				$("#Science").remove();
			}
		}
		else{
			if(this.checked){
				$("#checkboxContainer").append($("<input id='" + checkboxName + "' type='hidden' name='journal.OtherKu' value='" + checkboxName + "'>"));
			}else{
				$("#" + checkboxName).remove();
			}
		}
	
	});
	
	$(".radio1").click(function(){
		
		var radioName=$(this).attr("rel");
		$("#radio1Container").html("");
		if(this.checked){															
			$("#radio1Container").append($("<input  id='"+radioName+"' type='hidden' name='journal.AccessStatus' value='"+radioName+"'>"));
		}else{
			$("#"+radioName).remove();
		}
	});
	$(".radio2").click(function(){
		
		var radioName=$(this).attr("rel");
		$("#radio2Container").html("");
		if(this.checked){
			
			$("#radio2Container").append($("<input  id='"+radioName+"' type='hidden' name='journal.FeePapers' value='"+radioName+"'>"));
		}else{
			$("#"+radioName).remove();
		}
	
	});
	
	$("#CountrySimple1").change(function(){
		
		if($("#CountrySimple1").val()==""){
			
			$("#CountrySimple2").show();
		}
		else{
			
			$("#CountrySimple2").hide();
		}
		
	});
	$("#cover1").change(function(){
		
		if($("#cover1").val()!=""){
			
			$("#cover2").hide();
			
		}else{
			
			$("#cover2").show();
		}
		
	});
});
</script>   
  </body>
</html>