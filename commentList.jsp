<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Social Media Content Moderation</title>
<link rel="stylesheet" href="chart.css" />
<style type="text/css">
<%@
include file="style.css" %>
</style>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body class="sb-nav-fixed" style="background-color: #eff3f6 !important;">
<%@include file="shared/header.jsp" %>
<div id="loading" style="display: none"> <img id="loading-image" src="fetch-mod.gif" alt="Loading..." /> </div>
<div id="layoutSidenav" style="margin-top: 70px;">
  <div id="layoutSidenav_content">
    <div id="loading" style="display: none"> <img id="loading-image" src="fetch-mod.gif" alt="Loading..." /> </div>
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div id="layoutSidenav_nav"> <a href="gotoCommentList"  class = "active">Add User</a>
            
            </div>
        </div>
    </div>
    <div class="row pb-3">
        <div class="col-md-12"> 
            
            <form class="searchForm" action="addUser">
                <h5 class="h5">Enter Details</h5>
                <div class="searchBar youtubeBar">
                    <input class="form-control" name="fname" type="text"
										placeholder="Enter First Name">
                </div>
                <div class="searchBar youtubeBar">
                    <input class="form-control" name="lname" type="text"
										placeholder="Enter Last Name">
                </div>
                <div class="searchBar youtubeBar">
                    <input class="form-control" name="email" type="email"
										placeholder="Enter Email address">
                </div>
                
                <button type="submit" class="btn btn-primary " id="sub2"
									style="float: right">Add User</button>
            </form>
            <c:choose>
                <c:when test="${original!=null}">
                    <div class="searchResultCol scroll">
                    <a href="saveResultsYoutube" class="generateBtn">Save</a>
                        <div class="card-body tabs-card">
                            <div id="forScroll" style="height:460px;"> 
                               <table id="table" class="table-striped table-bordered table_prop">

                                                            <thead>

                                                                <tr>

                                                                    <th id="callid">Comment</th>

                                                                    <th id="agntName">Results</th>

                                                                    <th id="pro"> Type </th>
                                                                    <th>Review Recommended</th>

                                                                   

                                                               

                                                                </tr>

                                                               

                                                            </thead>

 															 <c:forEach items="${original}" var="entry" varStatus="status">
                                
                            

                                    

                                                            <tbody>
			
                                                                <tr>

                                                                    <td>${entry}</td>

                                                                    <td><b>Bad words: </b><c:forEach var="words" items="${moderateText[status.index]}" varStatus="loopCounter" step="2">
											<c:out value="${words}" /> </c:forEach> <br><b>Expressions: </b><c:out value="${intent[status.index]}" />, <c:out value="${sentiment[status.index]}" />, <c:out value="${emotion[status.index]}" /> <br> </td>

                                                                    <td><c:forEach var="types" items="${type[status.index]}" varStatus="loopCounter">
											<c:out value="${types}" /> <br> </c:forEach></td>
																	<td><c:out value="${toxicity[status.index]}" /></td>
                                                                   

                       

 

                                                                </tr>

 																	</c:forEach>

                                                            </tbody>

                                                        </table>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise> </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
  </div>
</div>
<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
					integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
					crossorigin="anonymous"></script> 
<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script>
					$("#sub_twitter").click(function() {
						$("#loading").show();
					});

					$("#sub_twitter_search").click(function() {
						$("#loading").show();
					});

					$("#sub_facebook_timeline").click(function() {
						$("#loading").show();
					});

					$("#sub_facebook_posts").click(function() {
						$("#loading").show();
					});
				</script> 
<script>
					$("#sub2").click(function() {
						$("#loading").show();
					});
				</script>
</body>
</html>