<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">
          <a href="admin/journal/findAll">WPRIM</a> >
          <a href="admin/user/index">Manage System</a> >
          <span>Update User</span>
        </div>
				<form action="admin/user/update" method="post" id="userForm">
					<input type="hidden"  name="userid" value="${user.UserId}">
					<table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">
						<tr>
							<th colspan="2"> &nbsp;&nbsp; <b>User Information</b> </th>
						</tr>
						<tr>
				    		<td style="width: 220px;">
						   		<label>UserName</label>
						   	</td>
						   	<td style="height: 35px;">
						   		<span>${user.UserName}</span>
						   	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Role</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<select style="width:690px" multiple="multiple" name="role" id="select2">
									<c:forEach items="${role1 }" var="role11">
										<option value="${role11.Id}" selected>${role11.Rname_en_US}</option>
									</c:forEach>
									<c:forEach items="${role2 }" var="role22">
										<option value="${role22.Id}" >${role22.Rname_en_US}</option>
									</c:forEach>
								</select>
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Password</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="password" name="password" value="${user.Password}">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Country</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<select name="country">
									<option value="${user.Country}" selected>${user.Country}</option>
									<c:forEach items="${countryList }" var="country">
										<option value="${country.CountryName }">${country.CountryName }</option>
									</c:forEach>
								</select>
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>EditDep</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="editDep" value="${user.EditDep}">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Address</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="address" value="${user.Address}">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Phone</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="phone" value="${user.Phone}">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Fax</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="fax" value="${user.Fax}">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Email</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<span>${user.Email}</span>
						 	</td>
						 </tr>
					</table><br>
					<span class="btn" style="margin-right:340px;">
			          	<a href="javascript:;" id="saveBtn">Save</a>
			        </span>
				</form>
		<br>
   	 </div>
   	<div class="r_bot"></div>
  </div>
  </div>
  <div class="footer">
  <div class="copyright"> ©2015 Regional Journal Selection Committee, WHO West Pacific Region Office. All right reserved. </div>
</div>
<script src="static/js/jquery-1.11.2.min.js"></script>
<script src="static/select2/js/select2.min.js"></script>
<script>

	$("#saveBtn").click(function(){
		$("#userForm").submit();
	});

	$("#select2").select2();
</script>
</body>
</html>
 </body>
</html>