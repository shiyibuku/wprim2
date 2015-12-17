<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">WPRIM &gt;
          <a href="index.jsp">Home</a>&gt;
          <span> JournalVolume Update</span>
        </div>
	   <form action="admin/journal/updateJournalVolume">
	   <input type="hidden" name="VolumeId" value="${journalVolume.VolumeId}">
	   <input type="hidden" name="JID" value="${journalVolume.JID}">
	   	<table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">	
    	<tr>
		    <th colspan="2"> &nbsp;&nbsp; <b>Basic Information</b> </th>
		</tr>
	   	<tr>
    		<td style="width: 220px;">
		   	<label>Volume</label>
		   	</td>
		   	<td style="height: 35px;">
		   	<input type="text" name="Volume" value="${journalVolume.Volume}"/>
		   	</td>
		 </tr>
		 <tr>
    		<td style="width: 220px;">
		   	<label>Issue</label>
		   	</td>
		   	<td style="height: 35px;">
		   	<input type="text" name="Issue" value="${journalVolume.Issue}"/>
		   	</td>
		  </tr>
		  <tr>
    		<td style="width: 220px;">
		   	<label>PubDate</label>
		   	</td>
		   	<td style="height: 35px;">
		   	<input class="Wdate" type="text" name="PubDate" value="${journalVolume.PubYear}-${journalVolume.PubMonth}-${journalVolume.PubDay}" onClick="WdatePicker()">
		   	</td>
		  </tr>
   	</table><br>
   	   	<div class="cz">
		   	<button>Save</button>&nbsp;
		 </div>
   		</form>
   		   </div>
   	<div class="r_bot"></div>
  </div>
  </div>
  <div class="footer">
  <div class="copyright"> ©2015 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>
<script language="javascript" type="text/javascript" src="/wprim2/DatePicker/WdatePicker.js"></script>
 </body>
</html>
