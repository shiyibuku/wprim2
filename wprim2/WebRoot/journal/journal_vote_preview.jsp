<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">
          <a href="admin/journal/findAll">WPRIM</a> >
          <a href="javascript:;">Comment</a>
        </div>
	   	<table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">	
	    	<tr>
		       <th> 
		         &nbsp;&nbsp; Reviewer
		       </th>
		       <th style="height: 35px;">
		        &nbsp;&nbsp;  Comment
		      </th>
		     </tr>
			<c:forEach items="${voteList }" var="vote">
				<tr>
			       <td style="width: 20%;"> 
			         &nbsp;&nbsp; <b>${vote.user.UserName }</b><br>
			         &nbsp;&nbsp; (${vote.is_agree == 1 ? 'Agree' : 'Disagree' })<br>
			         &nbsp;&nbsp; ${vote.craete_time }<br>
			       </td>
			       <td style="height: 35px;">
			        &nbsp;&nbsp;  ${vote.comment } 
			      </td>
			     </tr>
			</c:forEach>
   		</table>
   		<br>
   	 </div>
   	<div class="r_bot"></div>
  </div>
  </div>
  <div class="footer">
  <div class="copyright"> ©2015 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>
 </body>
</html>
