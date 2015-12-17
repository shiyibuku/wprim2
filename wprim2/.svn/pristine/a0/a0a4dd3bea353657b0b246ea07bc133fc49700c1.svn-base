<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/journal_approved_nav.jsp"></jsp:include>
<div class="container">
  <div class="locate">
    <div>
      <a href="admin/journal/findAll">WPRIM</a> >
      <a href="admin/journal/website">Website</a> >
      <a href="admin/journal/journalDetail?journalId=${journal.JournalId }">${empty journal.journalTitle ? '?' : journal.journalTitle  }</a> >
      <a href="admin/journal/articleList?journalVolumeId=${journalVolume.VolumeID }">${empty journalVolume.Volume ? '?' : journalVolume.Volume }</a> >
      <a href="javascript:;">${article.ArticleTitle }</a>
    </div>
  </div>
  <div class="main">
    <div class="box">
    <div class="article_title">${article.ArticleTitle }</div>

<TABLE width=90% border=0 align="center" cellPadding=0 cellSpacing=5><TBODY>
<TR>
<TD align="right" valign="top" class=qktitle1>Article Title&nbsp;:&nbsp;</TD>
<TD class=zw>${article.ArticleTitle }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Vernacular Title&nbsp;:&nbsp; </TD>
<TD class=zw>${article.VernacularTitle }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Language&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Language }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Author&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Author }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>CollectiveName&nbsp;:&nbsp;</TD>
<TD class=zw>${article.CollectiveName }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Affiliation&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Affiliation }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>FirstPage&nbsp;:&nbsp;</TD>
<TD class=zw>${article.FirstPage }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>LastPage&nbsp;:&nbsp;</TD>
<TD class=zw>${article.LastPage }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Journal Title&nbsp;:&nbsp;</TD>
<TD class=zw>${article.JournalTitle }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Volume&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Volume }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Issue&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Issue }</TD></TR>
<TR>
<TD width=150 align="right" valign="top" class=qktitle1>ISSN(ISSN/EISSN)&nbsp;:&nbsp;</TD>
<TD class=zw>1674-6090</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Publication Type&nbsp;:&nbsp;</TD>
<TD class=zw>${article.PublicationType }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Keywords&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Keywords }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>MeSH&nbsp;:&nbsp;</TD>
<TD class=zw>${article.MeSH }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>PubDate&nbsp;:&nbsp;</TD>
<TD class=zw>${article.PubDate }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>ArticleId&nbsp;:&nbsp;</TD>
<TD class=zw>${article.ArticleId }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Abstract&nbsp;:&nbsp;</TD>
<TD class=zw>${article.Abstract }</TD></TR>
<TR>
<TD align="right" valign="top" class=qktitle1>Appendix&nbsp;:&nbsp;</TD>
<TD class=zw>
	<c:if test="${article.fileType == 'pdf' }">
		<i class="fa fa-file-pdf-o"></i>
	</c:if>
	<c:if test="${article.fileType == 'doc' }">
		<i class="fa fa-file-word-o"></i>
	</c:if>
	<a href="admin/article/downloadAppendix?article=${article.article }"> ${article.prettyArticle }</a>
</TD>
</TR>
</TBODY>
</TABLE>
    </div>
  </div>
</div>
<div class="footer">
  <div class="copyright"> ©2012 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>
</body>
</html>

