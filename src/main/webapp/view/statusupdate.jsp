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

<form id="statusupdate" class="form-horizontal" action="newEnquiry()">
 <h1 class="text-primary">Status Update</h1>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">Status</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="statusmsg" placeholder=" Status" name="statusmsg" required>
        </div>
        </div>
        
      
        
        
        
         <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
        </form>



<h1>Status Update </h1>
<form action="statusupdate" Method="post">
<input type="text" name="pipelineid" placeholder="Enter Valid PipelineId" required><br><br>
<input type="text" name="statusmsg" placeholder="Enter Pipeline Status" required><br><br>
<input type="submit" value="Submit">
<P>${Success}</P>
<P>${ErrorMessage}</P>
</form>
</body>
</html>


<!-- <h1>Status Update </h1>
<form action="statusupdate" Method="post">
<input type="text" name="pipelineid" placeholder="Enter Valid PipelineId" required><br><br>
<input type="text" name="statusmsg" placeholder="Enter Pipeline Status" required><br><br>
<input type="submit" value="Submit"> -->