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

 <form id="salesupdate" class="form-horizontal" action="newEnquiry()">
 <h1 class="text-primary">Sales Update</h1>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">Status</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="saledate" placeholder=" Sales Date" name="saledate" onfocus="(this.type='date')" required>
      </div>
        </div>
        
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Payment Mode : </label>
      <div class="col-sm-10">
        <select  class="form-control" name="paymentmode" id="paymentmode">
  <option value="Shopify-PayUM">Shopify-PayUM</option>
  <option value="Shopify-PayPal">Shopify-PayPal</option>
  <option value="HDFC-UPI">HDFC-UPI</option>
  <option value="YR">YR</option>
   <option value="SBI">SBI</option>
  <option value="OBC">OBC</option>
  <option value="PayTM">PayTM</option>
  <option value="Cash">Cash</option>
   </select>
         </div>
        </div>   
        
         <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
        </form>



<h1>Sales Update</h1>
<form action="saleupdate" method="post">
<input type="text" name="pipelineid" placeholder="PipelineId" required><br><br>
 <input type="text" name="saledate" placeholder="Enter Sale Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="paymentmode" placeholder="Enter Payment Mode" required><br><br>
 <input type="submit" Value="Submit">
</form>
<P>${Success}</P>
<P>${ErrorMessage}</P>
</body>
</html>