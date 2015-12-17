<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">WPRIM &gt;
          <a href="index.jsp">Home</a>&gt;
          <span> Journal Create</span>
        </div>
  <form id="MyForm" method="post" action="admin/journal/saveJournal" enctype="multipart/form-data">
    <table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">	
    	<tr>
		    <th colspan="2"> &nbsp;&nbsp; <b>Basic Information</b> </th>
		</tr>
		 <tr>
    		<td style="width: 220px;">
    		<label>Country:</label>
    		</td>
    		<td style="height: 35px;">
			<select name="country"  id="countrylist">
				<c:forEach items="${countryList}" var="Country">
					<option value="${Country.CountryName}">${Country.CountryName}</option>
				</c:forEach>
			</select>&nbsp;
			<span style="color:red">*</span>
			</td>
	     </tr>
		 <tr>
    		<td style="width: 220px;">
    		<label>JournalTitle:</label>
    		</td>
    		<td style="height: 35px;">
			<input name="journalTitle" type="text" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>VernacularJournalTitle:</label>
			</td>
			<td style="height: 35px;">
			<input name="VernacularJournalTitle" type="text" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<label>Abbreviation:</label>
    		</td>
    		<td style="height: 35px;">
			<input type="text" name="Abbreviation"  style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>ISSN:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="ISSN1" />&mdash;
			<input type="text" name="ISSN2" />&nbsp;
			(eg:1980-0524)<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>EISSN:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EISSN1" />&mdash;
			<input type="text" name="EISSN2" />&nbsp;
			<span >(eg:1980-0524)</span>
			</td>
		</tr>
		<tr>
		
		<c:forEach items="${countryList}" var="Country">
			<c:if test="${Country.CountryName=='China'}">
	    		<td style="width: 220px;">
				<label>CN:</label>
				</td>
				<td style="height: 35px;">
				<span id="cn">
				<input type="text" name="CN1"  />&mdash;
				<input type="text" name="CN2"  />&nbsp;
				<span>(eg:11-9284/R)</span> 
				</span>
				</td>
			</c:if>
		</c:forEach>
	
		</tr>
			<tr>
    		<td style="width: 220px;">
			<label>StartYear:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="StartYear" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
			<tr>
    		<td style="width: 220px;">
			<label>Start_Issue:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="start_issue" value="1" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Start_Volume:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="start_volume" value="1" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Language:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="Language" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Sponsor:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" id="Sponsor" name="Sponsor" style="width:360px;"/>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Editorial Office: </label>
			</td>
			<td style="height: 35px;">
			<c:if test="${not empty EditDep.EditDep }">
				<input type="text" value="${EditDep.EditDep}" style="width:360px;" disabled />
				<input type="hidden"  name="edit_department" value="${EditDep.EditDep}"/>
			</c:if>
			<c:if test="${empty EditDep.EditDep }">
				<input type="text" name="edit_department"  style="width:360px;"/>
			</c:if>
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Publisher:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="publisher" style="width:360px;" />
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Cover:</label>
			</td>
			<td style="height: 35px;">
			<input type="file" name="cover">
			<span style="color:red">*</span><br>
			&nbsp;&nbsp;(Size:185x275 &nbsp; Type： .jpg only)
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Description:</label>
			</td>
			<td style="height: 75px;">
			<textarea style="width: 360px; height: 100px; overflow: auto;" name="Description" ></textarea>
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
			<label>EditorinChief:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EditorInChief" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>OfficeAddress:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="OfficeAddress" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>TelephoneNumber:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="TelephoneNumber" style="width:360px;" />
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Editor Email:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EditorEmail" style="width:360px;"/>&nbsp;
			<span style="color:red">*</span>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Website:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="WebSite" value="http://" style="width:360px;"/>
			</td>
		</tr>
		<tr>
			<th colspan="2"> &nbsp;&nbsp; <b>Statistical Data</b> </th>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Publication Frequency(per issue):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="IssuesNumber" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of Editors:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EditorsNumber" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of Reviewers:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="ReviewersNumber" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Number of International Reviewers:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="InternationReviewersNumber" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<!-- Acceptance Ratio -->
			<label>Number of Published /Number of Received(each year):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="ReceivedRatioNumber" value="%" style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Average Number of References of each Paper:</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="EachPaper"  style="width:360px;"/>
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
    		<!-- Fund Paper Ratio -->	
			<label>Number of Fund Paper / Number of Published (each year):</label>
			</td>
			<td style="height: 35px;">
			<input type="text" name="PublishedRatioNumber" value="%" style="width:360px;"/>
			</td>
		</tr>
		<tr>
			<td style="width: 220px;">
			<label>Besides WPRIM, is it indexed by other database?</label>
			</td>
			<td style="width: 35px;">
			<input class="checkbox" type="checkbox" rel="PubMed" />PubMed&nbsp;
			<input class="checkbox" type="checkbox" rel="Web of Science" />Web of Science&nbsp;
			<input class="checkbox" type="checkbox" rel="EMBASE" />EMBASE&nbsp;
			<input class="checkbox" type="checkbox" rel="Scopus" />Scopus&nbsp;
			<input id="checkbox" class="checkbox" type="checkbox"/>Other&nbsp;
			<input id="other" type="text">
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Open Access Status:</label>
			</td>
			<td style="height: 35px;">
			<input name="radio1" class ="radio1" type="radio" rel="Not OA"/>Not OA&nbsp;
			<input name="radio1" class ="radio1" type="radio" rel="DOAJ registered" />DOAJ registered&nbsp;
			<input name="radio1" class ="radio1" type="radio" rel="OA,but not registered in DOAJ " />OA,but not registered in DOAJ 
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Publication fee of Papers:</label>
			</td>
			<td style="height: 35px;">
			<input name="radio2" class ="radio2" type="radio" rel="Charged" />Charged&nbsp;
			<input name="radio2" class ="radio2" type="radio" rel="Not Charged" />Not Charged
			</td>
		</tr>
		<tr>
    		<td style="width: 220px;">
			<label>Sample:</label>
			</td>
			<td style="height: 35px;">
			<input type="file" name="CountrySimple">
			<span style="color:red">*</span><br>
			&nbsp;&nbsp;(PDF Document of the Latest Issue，including all pages!)
			</td>
		</tr>
	</table><br>
	<div class="cz">
		<button name="saveButton" value="saveButton">Save</button>&nbsp;
		<button>Summit</button>&nbsp;
		<a href="admin/journal/findAll"><button type="button">Cancel</button></a>
	</div>
	<div style="display:none" id="checkboxContainer"></div>
	<div style="display:none" id="radio1Container"></div>
	<div style="display:none" id="radio2Container"></div>
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
	<script>
		//校验
		$(function(){
			
			$("#MyForm").validate({
				
				rules:{
					journalTitle:{
						required:true,
					},
					VernacularJournalTitle:{
						required:true,
					},
					ISSN2:{
						required:true,
						rangelength:[4,4],
						disgits:true,
					},
					Sponsor:{
						required:true,
					},
					edit_department:{
						required:true,
					},
					cover:{
						required:true,
					},
					OfficeAddress:{
						required:true,
						minlength:1,
					},
					EditorEmail:{
						required:true,
						email:true,
					},
					WebSite:{
						required:true,
						url:true,
					},
					CountrySimple:{
						required:true,
					},
					StartYear:{
						required:true,
						rangelength:[4,4],
						digits:true,
					},
				},
				messages:{
					journalTitle:{
						required:"JournalTitle is not allowed to be empty",
					},
					VernacularJournalTitle:{
						required:"VernacularJournalTitle is not allowed to be empty",
					},
					ISSN2:{
						required:"ISSN is not allowed to be empty",
						rangelength:"The length is only 4",
						disgits:"Must be an integer",
					},
					Sponsor:{
						required:"Sponsor is not allowed to be empty",
					},
					edit_department:{
						required:"Editorial Office is not allowed to be empty",
					},
					cover:{
						required:"Please upload your cover",
					},
					OfficeAddress:{
						requried:"OfficeAddress is not allowed to be empty",
					},
					EditorEmail:{
						required:"EditorEmail is not allowed to be empty",
						email:"You must enter the correct form of e-mail",
					},
					WebSite:{
						required:"WebSite is not allowed to be empty",
						url:"You must enter the correct URL",
					},
					CountrySimple:{
						required:"Please upload your Sample",
					},
					StartYear:{
						required:"StartYear is not allowed to be empty",
						rangelength:"The length is only 4",
						digits:"Must be an integer",
					},
				}
			});
			//复选框设置
			$(".checkbox").click(function(){
				
				var checkboxName = $(this).attr("rel");
				
				if(checkboxName=='Web of Science'){
					
					if(this.checked){
						$("#checkboxContainer").append($("<input id='" + 'Science' + "' type='hidden' name='OtherKu' value='" + checkboxName + "'>"));
					}else{
						$("#Science").remove();
					}
				}
				else{
					if(this.checked){
						$("#checkboxContainer").append($("<input id='" + checkboxName + "' type='hidden' name='OtherKu' value='" + checkboxName + "'>"));
					}else{
						$("#" + checkboxName).remove();
					}
				}
			});
			//添加额外复选框校验
			$("#other").keyup(function(){
				
				var otherValue = $(this).val();
				
				$("#checkbox").attr("rel",otherValue);
				
			});
			//单选框
			$(".radio1").click(function(){
				
				var radioName=$(this).attr("rel");
				
				if(this.checked){															
					$("#radio1Container").append($("<input  id='"+radioName+"' type='hidden' name='AccessStatus' value='"+radioName+"'>"));
				}else{
					$("#"+radioName).remove();
				}
			});
			
			$(".radio2").click(function(){
				
				var radioName=$(this).attr("rel");
				
				if(this.checked){
					
					$("#radio2Container").append($("<input  id='"+radioName+"' type='hidden' name='FeePapers' value='"+radioName+"'>"));
				}else{
					$("#"+radioName).remove();
				}
			
			});
			
			$("#countrylist").click(function(){
				
				if($("#countrylist").val()!='China'){
					
					$("#cn").hide();
				}else{
					
					$("#cn").show();
				}
			});
		});
	</script>

  </body>
</html>