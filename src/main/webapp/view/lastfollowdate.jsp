<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <form id="lastfollowupdate" class="form-horizontal" action="newEnquiry()">
 <h1>Last FollowDate Update</h1>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email">LFDate:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="lastfollowed" placeholder="Last Followed Date" name="lastfollowed" 
        onfocus="(this.type='date')" required>
         </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email">LFDate:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nextfollowdate" placeholder="Last Followed Date" name="nextfollowdate" 
        onfocus="(this.type='date')" required>
         </div>
        </div>
        
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
        </form>




<h1>Last Follow Date Update</h1>
<form action="lastfollowdateform" method="post">
 <input type="text" name="pipelineid" placeholder=" Enter Valid PipelineId" required><br><br>
 <input type="text" name="lastfollowed" placeholder="Enter LastFollowed Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="nextfollowdate" placeholder="Enter Nextfollow Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="submit" Value="Submit">
</form>
<P>${Success}</P>
<P>${ErrorMessage}</P>
 
</body>
</html>