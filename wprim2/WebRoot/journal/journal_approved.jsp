<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../include/journal_approved_nav.jsp"></jsp:include>
<div class="container">
  <div class="locate">
    <div>
      <a href="admin/journal/findAll">WPRIM</a> >
      <a href="javascript:;">Website</a>
    </div>
  </div>
  <div class="main">
    <div class="box">
      <p><span class="bt">LIST BY JOURNAL TITLE</span><br />
        *Using initial navigation to find the journals which you want to edit, or click Add Journals button to create a new journal.<br />
        *For on-line manually inputting, you must Add Issue firstly, then Add Articles which have been published in that issue.<br />
        *For importing XML document, the articles' journal information, volume and issue can be created by the system automatically.</p>
      <p><br />
      </p>
      <div class="hr2"></div>
      <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="360" scope="col">Total: <span class="num">${journalList.totalRow }</span> Journals        　　　　　　Items <span class="num">${fn:length(journalList.list) == 0 ? '0' : '1'}-${journalList.pageSize > fn:length(journalList.list) ? fn:length(journalList.list) : journalList.pageSize }</span>
            </th>
            <th width="240" scope="col"><input placeholder="Journal Title" id="journalTitle" type="text" class="b5" style="width:220px;" value="${param.journalTitle }" /></th>
            <th width="74" scope="col"><span class="btn" style=" margin-right:0;">
              <a id="searchBtn" href="javascript:;">Search</a>
              </span></th>
            <th scope="col">&nbsp;</th>
            <th scope="col">
	            <span class="btn" style=" float:right; margin-right:0px;">
	            	<a href="javascript:;" id="importArticles">Import Articles</a>
	            </span>
	            <%-- <span class="btn" style=" float:right; margin-right:15px;">
	            	<a ${param.searchingMyJournals == 0 || empty param.searchingMyJournals ? '' : 'style="display:none"' } id="myJournals" href="admin/journal/website?newsroom=${newsroom }&country=${country}&searchingMyJournals=1"> My Journals</a>
	            	<a ${param.searchingMyJournals == 1 ? '' : 'style="display:none"' } id="allJournals" href="admin/journal/website?searchingMyJournals=0"> All Journals</a>
	            </span> --%>
            </th>
          </tr>
        </table>
      </div>
      
      <div style="position:absolute;left:930px;top:250px;width:300px;height:50px;display:none;border:1px solid #OOO;background:#5881AD;border-radius:3px;padding:5px" id="importDiv">
      	<form method="post" action="admin/article/importXml" enctype="multipart/form-data">
      		<input id="realFile" type="file" name="xmlFile" style="display:none"/>
      		<button type="button" id="fileBtn" value="">Brows...</button><input type="text" id="showFile">
      		<br/>
      		<button>Submit</button>
      		<button type="button" id="cancelImportBtn">Cancel</button>
      	</form>
      </div>
      
      <div class="journalslist">
        <div class="abcli">
          <a id="startWithAnything" href="javascript:;" class="curr">All</a>
          <a href="javascript:;" id="startWithA" class="startWith">A</a>
          <a href="javascript:;" id="startWithB" class="startWith">B</a>
          <a href="javascript:;" id="startWithC" class="startWith">C</a>
          <a href="javascript:;" id="startWithD" class="startWith">D</a>
          <a href="javascript:;" id="startWithE" class="startWith">E</a>
          <a href="javascript:;" id="startWithF" class="startWith">F</a>
          <a href="javascript:;" id="startWithG" class="startWith">G</a>
          <a href="javascript:;" id="startWithH" class="startWith">H</a>
          <a href="javascript:;" id="startWithI" class="startWith">I</a>
          <a href="javascript:;" id="startWithG" class="startWith">J</a>
          <a href="javascript:;" id="startWithK" class="startWith">K</a>
          <a href="javascript:;" id="startWithL" class="startWith">L</a>
          <a href="javascript:;" id="startWithM" class="startWith">M</a>
          <a href="javascript:;" id="startWithN" class="startWith">N</a>
          <a href="javascript:;" id="startWithO" class="startWith">O</a>
          <a href="javascript:;" id="startWithP" class="startWith">P</a>
          <a href="javascript:;" id="startWithQ" class="startWith">Q</a>
          <a href="javascript:;" id="startWithR" class="startWith">R</a>
          <a href="javascript:;" id="startWithS" class="startWith">S</a>
          <a href="javascript:;" id="startWithT" class="startWith">T</a>
          <a href="javascript:;" id="startWithU" class="startWith">U</a>
          <a href="javascript:;" id="startWithV" class="startWith">V</a>
          <a href="javascript:;" id="startWithW" class="startWith">W</a>
          <a href="javascript:;" id="startWithX" class="startWith">X</a>
          <a href="javascript:;" id="startWithY" class="startWith">Y</a>
          <a href="javascript:;" id="startWithZ" class="startWith">Z</a>
        </div>
        
        <div class="journameli">
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <c:forEach items="${journalList.list }" var="journal" varStatus="status">
            	<tr>
	              <th scope="row">${status.index + 1 }</th>
	              <td>
              		<a href="admin/journal/journalDetail?journalId=${journal.JournalId }" class="title" style="font-size:12px">${journal.journalTitle }</a>
              		<!-- <span style="float:right;font-size:25px;color:#CCC">></span> -->
	              </td>
	            </tr>
            </c:forEach>
          </table>
          
          <div class="page2" style="text-align:center">
            <font color="javascript:;104194">
            <a style="font-size:12px" href="javascript:;" class="title">[First]</a>
            <a style="font-size:12px" class="title" href="javascript:;">[Previous]</a>&nbsp;
            <c:forEach items="${pageNumberList }" var="pageNumber">
            	<c:if test="${pageNumber != journalList.pageNumber }">
            		<a class="title" href="javascript:CTRSAction_gotoPage([1]);">[${pageNumber }]</a>&nbsp;
            	</c:if>
            	<c:if test="${pageNumber == journalList.pageNumber }">
            		<span class="num2">[${pageNumber }]</span>&nbsp;
            	</c:if>
            </c:forEach>
            <a style="font-size:12px" class="title" href="javascript:;">[Next]</a>
            <a style="font-size:12px" class="title" href="javascript:;">[End]</a>
            </font>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="footer">
  <div class="copyright"> ©2012 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>

	<script src="static/js/jquery-1.11.2.min.js"></script>
	<script>
		$(function(){
			
			$("#realFile").change(function(){
				var localFilePath = $(this).val();
				var fileName = localFilePath.substring(localFilePath.lastIndexOf("\\") + 1);
				$("#showFile").val(fileName);
			});
			
			$("#fileBtn").click(function(){
				$("#realFile").click();
			});
			
			if(${not empty sessionScope.importResult}){
				alert("Import Xml Articles Complete:Total,${importResult.totalCount};Success,${importResult.successCount}");
				<%
					request.getSession().removeAttribute("importResult");
				%>
			}
			
			$("#cancelImportBtn").click(function(){
				$("#importDiv").hide();
			});
			
			$("#importArticles").click(function(){
				$("#importDiv").show();
			});
			
			$("#searchBtn").click(function(){
				var journalTitle = $("#journalTitle").val();
				//var searchingMyJournals = "${param.searchingMyJournals}";
				window.location.href = "admin/journal/website?journalTitle=" + journalTitle;
				/* if(searchingMyJournals == 1){
					var newsroom = "${newsroom}";
					var country = "${country}";
					window.location.href = "admin/journal/website?journalTitle=" + journalTitle + "&newsroom=" + newsroom + "&country=" + country + "&searchingMyJournals=1";
				}else{
					window.location.href = "admin/journal/website?journalTitle=" + journalTitle;
				} */
			});
			
			var startWith = "${startWith}";
			$("#startWithAnything").removeClass("curr");
			$("#startWith" + startWith).addClass("curr");
			
			$("#startWithAnything").click(function(){
				var journalTitle = $("#journalTitle").val();
				//var searchingMyJournals = "${param.searchingMyJournals}";
				window.location.href = "admin/journal/website?journalTitle=" + journalTitle;
				/* if(searchingMyJournals == 1){
					var newsroom = "${newsroom}";
					var country = "${country}";
					window.location.href = "admin/journal/website?journalTitle=" + journalTitle + "&newsroom=" + newsroom + "&country=" + country + "&searchingMyJournals=1";
				}else{
					window.location.href = "admin/journal/website?journalTitle=" + journalTitle;
				} */
			});
			
			$(".startWith").click(function(){
				var startWith = $(this).html();
				var journalTitle = $("#journalTitle").val();
				//var searchingMyJournals = "${param.searchingMyJournals}";
				window.location.href = "admin/journal/website?startWith=" + startWith + "&journalTitle=" + journalTitle;
				/* if(searchingMyJournals == 1){
					var newsroom = "${newsroom}";
					var country = "${country}";
					window.location.href = "admin/journal/website?startWith=" + startWith + "&journalTitle=" + journalTitle + "&newsroom=" + newsroom + "&country=" + country + "&searchingMyJournals=1";
				}else{
					window.location.href = "admin/journal/website?startWith=" + startWith + "&journalTitle=" + journalTitle;
				} */
			});
		});
	</script>
</body>
</html>
