<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>New Pipeline</h1>

<form class="form-horizontal" action="newEnquiry()">
    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="email">Customer Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="customername" placeholder="Customer Name" name="customername" required>
        </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email">Date Of Enquiry :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="dateofenquiry" placeholder="Date of Enquiry" name="dateofenquiry" 
        onfocus="(this.type='date')" required>
        </div>
        </div>
        
        
       <div class="form-group">
      <label class="control-label col-sm-2" for="email">Last Followed Date:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="lastfollowed" placeholder="Last Followed Date" name="lastfollowed" 
        onfocus="(this.type='date')" required>
         </div>
        </div>
        
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Pipeline Channel :</label>
      <div class="col-sm-10">
        <select  class="form-control" name="channel" id="channel">
  <option value="955WA">955WA</option>
  <option value="804WA">804WA</option>
  <option value="861WA">861WA</option>
  <option value="Call">Call</option>
   <option value="Instagram">Instagram</option>
  <option value="Facebook">Facebook</option>
  <option value="Website">Website</option>
  <option value="InPerson">InPerson</option>
  <option value="Email">Email</option>
</select>
         </div>
        </div>
        
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="email">Pipeline Status :</label>
      <div class="col-sm-10">
        <select  class="form-control" name="status" id="status">
  <option value="Interested">Interested</option>
  <option value="Photo Review">Photo Review</option>
  <option value="Waiting For Payment">Waiting For Payment</option>
  <option value="PAID Partial">PAID Partial</option>
   <option value="Paid Full">Paid Full</option>
  <option value="InHold">InHold</option>
  <option value="Dropped">Dropped</option>
</select>
         </div>
        </div>
        
        
      <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Order Value : </label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="ordervalue" placeholder="Order Value " name="ordervalue" required>
       </div>
        </div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Location : </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="location" placeholder="Location " name="location" required>
       </div>
        </div>
        
            <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Phone Number: </label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="phone" placeholder="Phone Number " name="phone" required>
      
       </div>
        </div>
        
             <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Instagram ID: </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="instaid" placeholder="Instagram ID" name="instaid" required>
       </div>
        </div>
        
              <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Email ID: </label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Email ID" name="email" required>
       </div>
        </div>
        
          <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Email ID: </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ordertype" placeholder="Order type" name="ordertype" required>
       </div>
        </div>   
     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>










<form action="newenquiry" method="post">
 <input type="text" name="pipelineid" placeholder="PipelineId" required>
 <input type="text" name="customername" placeholder="Customer Name" required> <br><br>
 <input type="text" name="dateofenquiry" placeholder="Enter Dateof Enquiry"
                    onfocus="(this.type='date')"> <br><br>
<input type="text" name="lastfollowed" placeholder="Enter LastFollowed Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="nextfollowdate" placeholder="Enter Nextfollow Date"
                    onfocus="(this.type='date')"><br><br>
<input type="text" name="channel" placeholder="Enter Channel details" required>
<br><br>
<input type="text" name="status" placeholder="Enter Pipeline Status" required>
 <br><br>
 <input type="number" name="ordervalue" placeholder="Order Value" required> <br><br>
 <input type="text" name="location" placeholder="Location" required> <br><br>
  <input type="number" name="phone" placeholder="Enter Phone Number" required> <br><br>
 <input type="text" placeholder="Insta Id" name="instaid"> <br><br>
<input type="email" name="email" placeholder="Email Address" required>   <br><br>
<input type="text" name="ordertype" placeholder="Order type" required>  <br><br><br>
<input type="submit" Value="Submit">

</form>
<p>${success}</p>
</body>
</html>
<!-- <form action="newenquiry" method="post">
 <input type="text" name="pipelineid" placeholder="PipelineId" required><br><br>
 <input type="text" name="customername" placeholder="Customer Name" required> <br><br>
 <input type="text" name="dateofenquiry" placeholder="Enter Dateof Enquiry"
                    onfocus="(this.type='date')"> <br><br>
<input type="text" name="lastfollowed" placeholder="Enter LastFollowed Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="nextfollowdate" placeholder="Enter Nextfollow Date"
                    onfocus="(this.type='date')"><br><br>
<input type="text" name="channel" placeholder="Enter Channel details" required>
<br><br>
<input type="text" name="status" placeholder="Enter Pipeline Status" required>
 <br><br>
 <input type="number" name="ordervalue" placeholder="Order Value" required> <br><br>
 <input type="text" name="location" placeholder="Location" required> <br><br>
  <input type="number" name="phone" placeholder="Enter Phone Number" required> <br><br>
 <input type="text" placeholder="Insta Id" name="instaid"> <br><br>
<input type="email" name="email" placeholder="Email Address" required>   <br><br>
<input type="text" name="ordertype" placeholder="Order type" required>  <br><br><br>
<input type="submit" Value="Submit">

</form> -->