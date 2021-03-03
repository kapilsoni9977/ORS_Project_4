<%@page import="in.co.rays.ors.util.HTMLUtility"%>
<%@page import="java.util.HashMap"%>
<%@page import="in.co.rays.ors.util.DataUtility"%>
<%@page import="in.co.rays.ors.util.ServletUtility"%>
<%@page import="in.co.rays.ors.controller.UserRegistrationCtl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="icon" type="image/png" href="<%=ORSView.APP_CONTEXT%>/img/logo.png" sizes="16*16"/>
<title> User Registration</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $("#udate").datepicker({
      changeMonth: true,
      changeYear: true,
	  yearRange:'-58:-18',
	  dateFormat:'dd-mm-yy',
	//  mindefaultDate : "01-01-1962"
    });
  });
  
  </script>
</head>
<body>
    <jsp:useBean id="bean" class="in.co.rays.ors.bean.UserBean" scope="request"></jsp:useBean>
   <form action="<%=ORSView.USER_REGISTRATION_CTL%>" method="post">
    <%@ include file="Header.jsp"%>
    
   
    	    <input type="hidden" name="id" value="<%=bean.getId()%>">
            <input type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
            <input type="hidden" name="modifiedBy" value="<%=bean.getModifiedBy()%>"> 
            <input type="hidden" name="createdDatetime" value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
            <input type="hidden" name="modifiedDatetime" value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
  
	
	<div align="center">
	        <h1>User Registration</h1>
	
    			<H2>
                <font color="green"> <%=ServletUtility.getSuccessMessage(request)%></font></H2>
                <H2>
                <font color="red"> <%=ServletUtility.getErrorMessage(request)%></font></H2>
	</div>
    <div align="center">
            <table>
                <tr>
                    <th align="right">First Name <span style="color: red">*</span></th>
                    <td><input type="text" name="firstName" placeholder="Enter First Name" size="25"  value="<%=DataUtility.getStringData(bean.getFirstName())%>"></td>
  <%--                   <% System.out.println("=============)))))"+bean.getFirstName());%>  --%>
                    <td style="position: fixed"> <font color="red"> <%=ServletUtility.getErrorMessage("firstName", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>

                <tr>
                    <th align="right">Last Name <span style="color: red">*</span></th>
                    <td><input type="text" name="lastName" placeholder="Enter last Name" size="25" value="<%=DataUtility.getStringData(bean.getLastName())%>"></td>
                	<td style="position: fixed"><font color="red"> <%=ServletUtility.getErrorMessage("lastName", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>

                <tr>
                    <th align="right">LoginId <span style="color: red">*</span></th>
                    <td><input type="text" name="login" placeholder="Enter vallid Email-Id" size="25" value="<%=DataUtility.getStringData(bean.getLogin())%>"></td>
                    <td style="position: fixed">    <font color="red"> <%=ServletUtility.getErrorMessage("login", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>

                <tr>
                    <th align="right" >Gender <span style="color: red">*</span></th>
                    <td >
                  	<%
                            HashMap map = new HashMap();
                        
                        	map.put("Male", "Male");
                            map.put("Female", "Female");

                            String htmlList = HTMLUtility.getList("gender", bean.getGender(), map);
                        %> 
                        <%=htmlList%>
                    </td>
                    <td style="position: fixed">
                    <font color="red"><%=ServletUtility.getErrorMessage("gender", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>

                <tr>
                    <th align="right">Date Of Birth <span style="color: red">*</span></th>
                    <td><input type="text" name="dob" id="udate" readonly="readonly" size="25" placeholder="Greater then 18 year"  value="<%=DataUtility.getDateString(bean.getDob())%>"></td> 
                    <td style="position: fixed"><font color="red"> <%=ServletUtility.getErrorMessage("dob", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>
 
                 <tr>
                    <th align="right">Mobile No <span style="color: red">*</span></th>
                    <td><input type="text" name="mobileNo" placeholder="Enter Mobile No" size="25" maxlength="10" value="<%=DataUtility.getStringData(bean.getMobileNo())%>"></td>
                      <td style="position: fixed">  <font color="red"> <%=ServletUtility.getErrorMessage("mobileNo", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>
  
                <tr>
                    <th align="right">Password <span style="color: red">*</span></th>
                    <td><input type="password" name="password" placeholder="Amit@123" size="25" value="<%=DataUtility.getStringData(bean.getPassword())%>"></td>
                      <td style="position: fixed">  <font color="red"> <%=ServletUtility.getErrorMessage("password", request)%></font></td>
                </tr>
 
 				<tr><th style="padding: 3px"></th><td></td></tr>
 
                <tr>
                    <th align="right">Confirm Password <span style="color: red">*</span></th>
                    <td><input type="password" name="confirmPassword" placeholder="Re-Enter password" size="25" value="<%=DataUtility.getStringData(bean.getConfirmPassword())%>"></td>
                     <td style="position: fixed">  <font color="red"> <%=ServletUtility.getErrorMessage("confirmPassword", request)%></font></td>
                </tr>

				<tr><th style="padding: 3px"></th><td></td></tr>


                <tr>
                    <th></th>
                    <td colspan="2"> 
                    <input type="submit" name="operation" value="<%=UserRegistrationCtl.OP_SIGN_UP %>"> 
                    <input type ="submit" name="operation" value="<%=UserRegistrationCtl.OP_RESET %>">
                    </td>
                </tr>
            </table>
  </div>
    </form>
    <%@ include file="Footer.jsp"%>
</body>
</html>