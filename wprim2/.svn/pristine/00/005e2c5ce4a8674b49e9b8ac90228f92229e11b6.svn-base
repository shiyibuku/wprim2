<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/include/journalhome.jsp"></jsp:include>
<div id="right">
    <div class="r_top"></div>
      <div class="r_main">
       <div style="margin-bottom: 5px;">
          <a href="admin/journal/findAll">WPRIM</a> >
          <a href="admin/user/index">Manage System</a> >
          <span>New User</span>
        </div>
				<form action="admin/user/save" method="post" id="userForm">
					<table width="100%" border="0" cellspacing="0" cellpadding="4" class="table_list">
						<tr>
							<th colspan="2"> &nbsp;&nbsp; <b>User Information</b> </th>
						</tr>
						<tr>
				    		<td style="width: 220px;">
						   		<label>UserName</label>
						   	</td>
						   	<td style="height: 35px;">
						   		<input type="text" name="username">
						   	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Password</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="password" name="password">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Role</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<select style="width:690px" multiple="multiple" name="role" class="form-control" id="select2">
									<c:if test="${fn:length(roleList) != 1 }">
										<c:forEach items="${roleList}" var="role">
											<option value="${role.id}">${role.Rname_en_US}</option>
										</c:forEach>
									</c:if>
									<c:if test="${fn:length(roleList) == 1 }">
										<c:forEach items="${roleList}" var="role">
											<option value="${role.id}" selected>${role.Rname_en_US}</option>
										</c:forEach>
									</c:if>
								</select>
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Country</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<select name="country">
									<c:if test="${fn:length(countryList) != 1 }">
										<option value="#">Please Select Country</option>
										<c:forEach items="${countryList }" var="country">
											<option value="${country.CountryName }">${country.CountryName }</option>
										</c:forEach>
									</c:if>
									<c:if test="${fn:length(countryList) == 1 }">
										<c:forEach items="${countryList }" var="country">
											<option selected value="${country.CountryName }">${country.CountryName }</option>
										</c:forEach>
									</c:if>
								</select>
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>EditDep</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="editDep">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Address</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="address">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Phone</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="phone">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Fax</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="text" name="fax">
						 	</td>
						 </tr>
						 <tr>
						 	<td style="width: 220px;">
						 		<label>Email</label>
						 	</td>
						 	<td style="height: 35px;">
						 		<input type="email" name="email"><br>
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
<script src="static/js/jquery.validate.min.js"></script>
<script src="static/select2/js/select2.min.js"></script>
<script>

	$("#userForm").validate({
		rules:{
			username:{
				required:true
			},
			password:{
				required:true,
				rangelength:[6,18]
			}
		},
		messages:{
			username:{
				required:"username can not be empty!"
			},
			password:{
				required:"password can not be emtpy!",
				rangelength:"password required 6 to 18 length."
			}
		}
	});

	$("#saveBtn").click(function(){
		$("#userForm").submit();
	});

	$("#select2").select2();
</script>
</body>
</html>
 </body>
</html>