<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
        <form action="admin/journal/findAll" method="get" id="searchForm">
	        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	          <tbody>
	            <tr>
	              <td align="left" valign="middle" style="padding-right:10px;">
	                <select name="year" id="year" class="searchOption">
			        	<option value="">---All Years---</option>
			        	<c:forEach items="${yearList }" var="year">
			        		<option value="${year }" ${param.year == year ? 'selected' : '' }>${year }</option>
			        	</c:forEach>
			        </select>
	              </td>
	            
	              <td align="left" valign="middle" style="padding-right:10px;">
	                <select name="country" id="country" class="searchOption">
			        	<option value="">---All Countries---</option>
			        	<c:forEach items="${countryList }" var="country">
			        		<option value="${country.CountryName }" ${param.country == country.CountryName ? 'selected' : '' }>${country.CountryName }</option>
			        	</c:forEach>
			        </select>
	              </td>
	              
	              <c:if test="${not empty sessionScope.curr_user }">
	              	<td height="45" align="left" valign="middle" style="padding-right:10px;">
		                <select name="reviewStatus" id="reviewStatus" class="searchOption">
				        	<option value="">---All Status---</option>
				        	<c:forEach items="${reviewStatusList }" var="reviewStatus">
				        		<option value="${reviewStatus }" ${param.reviewStatus == reviewStatus ? 'selected' : '' }>${reviewStatus }</option>
				        	</c:forEach>
				        </select>
		            </td>
	              </c:if>
	              
	              <td width="300" height="45" align="left" valign="middle" style="padding-right:10px;">
	              	<input id="journalTitle" value="${param.journalTitle }" name="journalTitle" type="text" placeholder="Journal Title" class="b5" style="width:450px;">
	              </td>
	              
	              <td width="75" height="45" valign="middle">
	              	<span class="btn" style="float:right; margin-right:0;">
	                	<a href="javascript:;" id="searchBtn">Search</a>
	                </span>
	              </td>
	            </tr>
	          </tbody>
	        </table>
        </form>
        
        <div class="hr"></div>
        
        <div class="cz">
        	<c:if test="${not empty sessionScope.curr_user }">
        		<span class="btn" style="margin-right:340px;">
		          	<a href="javascript:;" id="newJournal">Add</a>
		        </span>
        	</c:if>
          <c:if test="${showReviewButtons.showSubmitBtn }">
          	  <span class="btn review" ref="Unsubmitted_submitted to NJSC">
	          	<a href="javascript:void(0)">Submit</a>
	          </span>
          </c:if>
          <c:if test="${showReviewButtons.showRejectBtn }">
          	<span class="btn review" ref="reviewed by NJSC$submitted to NJSC_rejected by NJSC">
         	 <a href="javascript:void(0)">Reject</a>
         	</span>
          </c:if>
          <c:if test="${showReviewButtons.showSubmitToRJSC }">
	          <span class="btn review" ref="reviewed by NJSC$submitted to NJSC_submitted to RJSC">
	          	<a href="javascript:void(0)">Submit to RJSC</a>
	          </span>
          </c:if>
          <!-- <span class="btn review" ref="reviewed by RJSC$submitted to RJSC_rejected by RJSC">
          	<a href="javascript:void(0)">Reject by RJSC</a>
          </span> -->
          <c:if test="${showReviewButtons.showApproveByRJSC }">
	          <span class="btn review" ref="reviewed by RJSC$submitted to RJSC_approved by RJSC">
	          	<a href="javascript:void(0)">Approve by RJSC</a>
	          </span>
          </c:if>
          <c:if test="${showReviewButtons.showSuspend }">
	          <span class="btn review" ref="approved by RJSC_suspended">
	          	<a href="javascript:void(0)">Suspend</a>
	          </span>
          </c:if>
          <c:if test="${showReviewButtons.showRecall }">
	          <span class="btn review" ref="suspended_approved by RJSC">
	          	<a href="javascript:void(0)">Recall</a>
	          </span>
          </c:if>
        </div>
        
    	<table style="text-align:center" width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">
    		<tr>
    			<c:if test="${not empty sessionScope.curr_user }">
    				<th height="35" scope="col"><input id="reverseSelect" type="checkbox" name="ifAll"></th>
    				<th scope="col">Year</th>
    			</c:if>
    			<th scope="col">Country</th>
    			<th scope="col">Journal Title</th>
    			<c:if test="${not empty sessionScope.curr_user }">
    				<th scope="col">Review Status</th>
    			</c:if>
    			<th scope="col">Sample</th>
    			<th scope="col">Remarks</th>
    			<th scope="col">Agree</th>
    			<th scope="col">Disagree</th>
    			<c:if test="${showColumns.showNJSCReview }">
    				<th scope="col">NJSC Review</th>
    			</c:if>
    			<th scope="col">Remarks</th>
    			<th scope="col">Agree</th>
    			<th scope="col">Disagree</th>
    			<c:if test="${showColumns.showRJSCReview }">
    				<th scope="col">RJSC Review</th>
    			</c:if>
    			<c:if test="${showColumns.showOperate }">
    				<th scope="col">Operation</th>
    			</c:if>
    		</tr>
    		<c:forEach items="${journalList.list }" var="journal">
    			<tr id="journalTr${journal.JournalId }">
    				<c:if test="${not empty sessionScope.curr_user }">
    					<td><input ref="${journal.JournalId }" type="checkbox" class="checkbox"></td>
    					<td>${journal.year }</td>
    				</c:if>
    				<td>${journal.country }</td>
    				<td><a href="admin/journal/journalDetail?journalId=${journal.JournalId }">${journal.journalTitle }</a></td>
    				<c:if test="${not empty sessionScope.curr_user }">
    					<td>${journal.review_status }</td>
    				</c:if>
    				<td>
    					<c:forEach items="${journal.samples }" var="sample" varStatus="status">
    						 ${status.index + 1 }.<a href="${sample.filePath.substring(1) }" target="blank"><img src="static2/images/pdf.png"></a>
    					</c:forEach>
    				</td>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalId }&type=national&isAgree=2">${journal.nationalRemarks }</a></td>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalID }&type=national&isAgree=1">${journal.nationalAgreeCount }</a></td>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalID }&type=national&isAgree=0">${journal.nationalDisagreeCount }</a></td>
    				<c:if test="${showColumns.showNJSCReview }">
    					<td>
	    					<c:if test="${journal.canNationalReview }">
	    						<a href="javascript:;" class="comment" ref="national" rel="${journal.JournalId }"><i class="fa fa-commenting-o"></i> Comment</a><br>
	    						<a href="admin/journal/vote?journalId=${journal.JournalId }&isAgree=1&voteType=national"><i class="fa fa-check"></i> Argee</a><br>
	    						<a href="admin/journal/vote?journalId=${journal.JournalId }&isAgree=0&voteType=national"><i class="fa fa-times"></i> Disagree</a>
	    					</c:if>
	    					<c:if test="${!journal.canNationalReview && journal.haveNationalVote}">
	    						<a href="javascript:;" class="evaluate" ref="${journal.JournalId }" rel="national"><i class="fa fa-eye"></i> Evaluate</a>
	    					</c:if>
	    				</td>
    				</c:if>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalID }&type=regional&isAgree=2">${journal.regionalRemarks }</a></td>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalID }&type=regional&isAgree=1">${journal.regionalAgreeCount }</a></td>
    				<td><a class="votePreview" href="admin/journal/previewVote?journalId=${journal.JournalID }&type=regional&isAgree=0">${journal.regionalDisagreeCount }</a></td>
    				<c:if test="${showColumns.showRJSCReview }">
    					<td>
	    					<c:if test="${journal.canRegionalReview }">
	    						<a href="javascript:;" class="comment" ref="regional" rel="${journal.JournalId }"><i class="fa fa-commenting-o"></i> Comment</a><br>
	    						<a href="admin/journal/vote?journalId=${journal.JournalId }&isAgree=1&voteType=regional"><i class="fa fa-check"></i> Argee</a><br>
	    						<a href="admin/journal/vote?journalId=${journal.JournalId }&isAgree=0&voteType=regional"><i class="fa fa-times"></i> Disagree</a>
	    					</c:if>
	    					<c:if test="${!journal.canRegionalReview && journal.haveRegionalVote}">
	    						<i class="fa fa-pencil-square-o"></i>
	    						<a href="javascript:;" class="evaluate" ref="${journal.JournalId }" rel="regional"><i class="fa fa-eye"></i> Evaluate</a>
	    					</c:if>
	    				</td>
    				</c:if>
    				<c:if test="${showColumns.showOperate }">
    					<td>
	    					<c:if test="${journal.canModify }">
	    						<a href="admin/journal/queryJournal?JournalId=${journal.JournalId }"><i class="fa fa-pencil-square-o"></i>Edit</a>
	    					</c:if><br>
	    					<c:if test="${journal.canDelete }">
	    						<a href="javascript:;" ref="${journal.JournalId }" class="delete"><i class="fa fa-trash-o"></i>Delete</a>
	    					</c:if>
	    				</td>
    				</c:if>
    			</tr>
    		</c:forEach>
    	</table>
    	
    	<div id="voteContainer" style="position:fixed;top:300px;left:600px;background-color:#446993;display:none;width:300px;height:150px;border-radius:3px;padding:5px">
   			<input type="radio" id="agree" name="isAgree" checked><span style="color:#FFF">Agree</span>
   			<input type="radio" id="disagree" name="isAgree"><span style="color:#FFF">Disagree</span>
   			<form id="commentForm" action="admin/journal/vote" method="post">
   				<input id="isAgree" type="hidden" name="isAgree" value="1">
   				<input id="journalId" type="hidden" name="journalId">
   				<input id="voteType" type="hidden" name="voteType">
   				<textarea id="comment" name="comment" rows="6" cols="45"></textarea>
   				<br>
   				<button>Submit</button>
   				<button id="cancelBtn" type="button">Cancel</button>
   			</form>
    	</div>
    	
    	<form id="selectedJournals" action="admin/journal/review" method="post">
    		<input id="actionStatus" type="hidden" name="actionStatus">
    	</form>
    	
    	<div class="page">
          <div style="float:left;margin-top:15px;">
          	Total:&nbsp;
          	<span class="jsjgsz">${journalList.totalRow}</span>&nbsp;,&nbsp;
          	${journalList.pageNumber }/${journalList.totalPage }
          </div>
          <div id="pagination_down" class="pagination">
            <span title="First Page">
            	<a href="javascript:;" id="homePage">
           			<img src="static2/images/pagefirst.gif"/>
           		</a>
            </span>
            <span id="prev" title="Previous Page">
            	<a href="javascript:;">
            		<img src="static2/images/pageprevious.gif"/>
            	</a>
            </span>
            <span title="Next Page" id="next">
            	<a href="javascript:;">
            		<img src="static2/images/pagenext.gif"/>
            	</a>
            </span>
            <span title="Last Page">
            	<a href="javascript:;" id="endPage">
            		<img src="static2/images/pagelast.gif"/>
            	</a>
            </span>
            <span>
            	&nbsp;Page:&nbsp;
            	<input style="text-align:center" type="text" maxlength="8" class="pageInput" id="pageInput2" value="${journalList.pageNumber }" title="Input page"/>
           		&nbsp;&nbsp;
	            <a href="javascript:;" id="changePageNumber">
	            	<img align="text-bottom" src="static2/images/pagego.jpg"/>
	            </a>
            </span>
          </div>
        </div>
    	
    </div>
   	<div class="r_bot"></div>
  </div>
  </div>
  </div>
  <div class="footer">
  <div class="copyright"> ©2012 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>

	<script src="static/js/jquery-1.11.2.min.js"></script>
	<script src="static/js/jquery.validate.min.js"></script>
	<script>
		$(function(){
			
			$(".searchOption").change(function(){
				$("#searchForm").submit();
			});
			
			$(".votePreview").each(function(){
				var voteNumber = $(this).text();
				if(voteNumber == 0){
					$(this).attr("href","javascript:;");
				}
			});
			
			$("#newJournal").click(function(){
				$.ajax({
					url:"admin/journal/canCreateNewJournal",
					type:"post",
					success:function(data){
						if(data.canCreateNewJournal === true){
							window.location.href = "admin/journal/createJournal";
						}else{
							alert("You aren't allowed to create a journal!");
						}
					}
				});
			});
			
			$(".delete").click(function(){
				var journalId = $(this).attr("ref");
				if(confirm("Warning:One Journal will be deleted!")){
					$.ajax({
						type:"get",
						url:"admin/journal/deleteJournal?journalId=" + journalId,
						success:function(data){
							if(data.data === true){
								$("#journalTr" + journalId + " td").css("background","#DF4D26");
								$("#journalTr" + journalId).fadeOut(1000);
							}else{
								alert("Server error,try again later!");
							}
						},
						error:function(){
							alert("Server error,try again later!");
						}
					});
				}
			});
			
			$("#endPage").click(function(){
				if(${journalList.pageNumber != journalList.totalPage}){
					var endPage = ${journalList.totalPage};
					var country = $("#country").val();
					var reviewStatus = $("#reviewStatus").val();
					var journalTitle = $("#journalTitle").val();
					window.location.href = "admin/journal/findAll?pageNumber=" + endPage + "&country=" + country + "&reviewStatus=" + reviewStatus + "&journalTitle=" + journalTitle;
				}
			});
			
			$("#homePage").click(function(){
				if(${journalList.pageNumber != 1}){
					var country = $("#country").val();
					var reviewStatus = $("#reviewStatus").val();
					var journalTitle = $("#journalTitle").val();
					window.location.href = "admin/journal/findAll?pageNumber=1&country=" + country + "&reviewStatus=" + reviewStatus + "&journalTitle=" + journalTitle;
				}
			});
			
			$("#changePageNumber").click(function(){
				var pageNumber = $("#pageInput2").val();
				var country = $("#country").val();
				var reviewStatus = $("#reviewStatus").val();
				var journalTitle = $("#journalTitle").val();
				window.location.href = "admin/journal/findAll?pageNumber=" + pageNumber + "&country=" + country + "&reviewStatus=" + reviewStatus + "&journalTitle=" + journalTitle;
			});
			
			$("#searchBtn").click(function(){
				$("#searchForm").submit();
			});
			
			$("#prev").click(function(){
				if(${journalList.pageNumber} > 1){
					var pageNumber = ${journalList.pageNumber - 1};
					var country = $("#country").val();
					var reviewStatus = $("#reviewStatus").val();
					var journalTitle = $("#journalTitle").val();
					window.location.href = "admin/journal/findAll?pageNumber=" + pageNumber + "&country=" + country + "&reviewStatus=" + reviewStatus + "&journalTitle=" + journalTitle;
				}
			});
			
			$("#next").click(function(){
				if(${journalList.pageNumber < journalList.totalPage}){
					var pageNumber = ${journalList.pageNumber + 1};
					var country = $("#country").val();
					var reviewStatus = $("#reviewStatus").val();
					var journalTitle = $("#journalTitle").val();
					window.location.href = "admin/journal/findAll?pageNumber=" + pageNumber + "&country=" + country + "&reviewStatus=" + reviewStatus + "&journalTitle=" + journalTitle;
				}
			});
			
			$(".checkbox").click(function(){
				var journalId = $(this).attr("ref");
				if(this.checked){
					$("#selectedJournals").append($("<input id='" + journalId + "' type='hidden' name='journalIds' value='" + journalId + "'>"));
				}else{
					$("#" + journalId).remove();
				}
			});
			
			$("#reverseSelect").click(function(){
				$(".checkbox").click();
			});
			
			$(".review").click(function(){
				$("#actionStatus").val($(this).attr("ref"));
				$("#selectedJournals").submit();
			});
			
			$("#commentForm").validate({
				rules:{
					comment:{
						required:true
					}
				},
				messages:{
					comment:{
						required:""
					}
				}
			});
			
			$(".comment").click(function(){
				var voteType = $(this).attr("ref");
				var journalId = $(this).attr("rel");
				$("#journalId").val(journalId);
				$("#voteType").val(voteType);
				$("#voteContainer").show();
			});
			
			$("#agree").click(function(){
				$("#isAgree").val("1");
			});
			
			$("#disagree").click(function(){
				$("#isAgree").val("0");
			});
			
			$("#cancelBtn").click(function(){
				$("#voteContainer").hide();
			});
			
			$(".evaluate").click(function(){
				var journalId = $(this).attr("ref");
				var voteType = $(this).attr("rel");
				$.ajax({
					url:"admin/journal/getVote",
					type:"post",
					data:{'journalId':journalId,'voteType':voteType},
					success:function(result){
						var is_agree = result.vote.IS_AGREE;
						$("#isAgree").val(is_agree);
						$("#journalId").val(journalId);
						$("#voteType").val(voteType);
						$("#comment").val(result.vote.COMMENT);
						if(is_agree === 1){
							$("#agree").click();
						}else{
							$("#disagree").click();
						}
						$("#voteContainer").show();
					},
					error:function(){
						alert("server error");
					}
				});
			});
		});
	</script>
</body>
</html>