<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../include/journal_approved_nav.jsp"></jsp:include>
<div class="container">
  <div class="locate">
    <div>
      <a href="admin/journal/findAll">WPRIM</a> >
      <a href="admin/journal/website">Website</a> >
      <a href="admin/journal/journalDetail?journalId=${journal.JournalId }">${empty journal.journalTitle ? '?' : journal.journalTitle  }</a> >
      <a href="javascript:;">${journalVolume.Volume }</a>
    </div>
  </div>
  <div class="main">
    <div class="box">
      <p>
      	<span class="bt">  
			JournalTitle: <strong>${journal.journalTitle }</strong>
		</span>
		<br>
		<span class="bt">  
			ISSN:  <strong>${journal.ISSN }</strong>
		</span>
      <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="360" scope="col">Total: <span class="num">${articleList.totalRow }</span> Articles        　　　　　　Items <span class="num">${fn:length(articleList.list) != 0 ? '1' : '0' }-${fn:length(articleList.list) }</span>
            </th>
          </tr>
        </table>
      </div>
      <span class="btn" style=" float:right; margin-right:15px;">
      	<a href="admin/article/createArticle?journalVolumeId=${journalVolumeId}">Add Article</a>
      </span>
      <div class="journalslist">
        <div class="journameli">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <c:forEach items="${articleList.list }" var="article" varStatus="status">
            	<tr>
	              <th scope="row">${status.index + 1 }</th>
	              <td><a href="admin/article/articleDetail?articleId=${article.WPRIMID }" class="title">${article.ArticleTitle }</a></td>
	              <td>FirstPage ${article.FirstPage }</td>
	              <td>LastPage ${article.LastPage }</td>
	            </tr>
            </c:forEach>
          </table>
          
          <div class="page2" style="text-align:center">
            <font color="#104194">
	            <a id="firstPage" href="javascript:;" class="title">[First]</a>
	            <a id="prev" class="title" href="javascript:;">[Previous]</a>&nbsp;
	            <c:forEach items="${pageNumberList }" var="pageNumber">
	            	<c:if test="${pageNumber == articleList.pageNumber }">
	            		<span style="font-size:12px" class="title">[${pageNumber }]</span>&nbsp;
	            	</c:if>
	            	<c:if test="${pageNumber != articleList.pageNumber }">
	            		<a class="title" href="admin/article/articleList?pageNumber=${pageNumber }&journalVolumeId=${journalVolumeId}">[${pageNumber }]</a>&nbsp;
	            	</c:if>
	            </c:forEach>
	            <a id="next" href="javascript:;" class="title">[Next]</a>
	            <a id="end" href="javascript:;" class="title">[End]</a> 
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
			$("#firstPage").click(function(){
				var journalVolumeId = "${journalVolumeId}";
				if(${articleList.pageNumber != 1}){
					window.location.href = "admin/article/articleList?journalVolumeId=" + journalVolumeId + "&pageNumber=1";
				}
			});
			
			$("#prev").click(function(){
				var journalVolumeId = "${journalVolumeId}";
				if(${articleList.pageNumber > 1}){
					var pageNumber = "${articleList.pageNumber - 1}";
					window.location.href = "admin/article/articleList?journalVolumeId=" + journalVolumeId + "&pageNumber=" + pageNumber;
				}
			});
			
			$("#next").click(function(){
				var journalVolumeId = "${journalVolumeId}";
				if(${articleList.pageNumber < articleList.totalPage}){
					var pageNumber = "${articleList.pageNumber + 1}";
					window.location.href = "admin/article/articleList?journalVolumeId=" + journalVolumeId + "&pageNumber=" + pageNumber;
				}
			});
			
			$("#end").click(function(){
				var journalVolumeId = "${journalVolumeId}";
				if(${articleList.pageNumber != articleList.totalPage}){
					var pageNumber = "${articleList.totalPage}";
					window.location.href = "admin/article/articleList?journalVolumeId=" + journalVolumeId + "&pageNumber=" + pageNumber;
				}
			});
		});
	</script>
</body>
</html>

