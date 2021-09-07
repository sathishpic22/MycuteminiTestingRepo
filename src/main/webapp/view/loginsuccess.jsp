<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script src="/JavaScript/LoginSuccess.js"></script>  
 <script type="text/javascript">
 
 
 $(document).ready(function() {

	  $(window).keydown(function(event){
	    if(event.keyCode == 13) {
	      event.preventDefault();
	      return false;
	    }
	  });
	});
 
 
 </script> 
 
 <style>
  div.searchresult {
    background: #ffffff none repeat scroll 0 0;
    border: 0.1px solid #666;
padding: 5px;
    position: relative;
    width: 100%;
    height: 200px;
    overflow: auto;
  }
  
  
  
  
  </style>
 
<title>Insert title here</title>
</head>
<body >
 <div class="container">
 
<div class="row">
<form id="search">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search" id="pipelinesearchtext" autocomplete="off">
    
    <div class="input-group-btn">
      <a class="btn btn-default" type="submit" id="searchclick" >
        <i class="glyphicon glyphicon-search"></i>
      </a>
    </div> 
  </div>
</form>
</div>

<div class="row" id="searchresults">

<div class="searchresult" >
 <ul class="list-group list-group-flush " id="orderlistsearch">
  </ul>
</div>
</div>

<div class="row" >


<div class="col-lg-4 col-xs-4 col-sm-4 col-md-4 ">
  
  <h3 class="text-primary">Welcome  </h3>
 <!--  <div class="btn-group-vertical"> -->
   <a class="btn btn-primary btn-lg btn-block" id="newpipelineview">NewPipeline</a>
   <a class="btn btn-primary btn-lg btn-block"   id="statusupdateview">Status Update</a>
   <a class="btn btn-primary btn-lg btn-block" id="lastfollowedview">LastFollow Update</a>
   <a class="btn btn-primary btn-lg btn-block"  id="salesupdateview">Sales Update</a>
    <a class="btn btn-primary btn-lg btn-block"  id="pipelinereports">Reports</a>
    <a class="btn btn-primary btn-lg btn-block" id="exportservice" >Excel EXport</a>
   <a class="btn btn-primary btn-lg btn-block" href="logout">Logout</a>
  <!-- </div>  -->
</div>

  <div id="loginbody" class="col-lg-8 col-xs-8 col-sm-8 col-md-8">
  
  
  <!-- NEW PIPELINE fORM -->
  
  <!--pipelineid,customername,dateofenquiry,lastfollowed,nextfollowdate,channel,status,ordervalue,location,phone,instaid,emailid,ordertype  -->
  
  <!--  
    <form  method="post">
 <input type="text" name="pipelineid" id="pipelineid" placeholder="PipelineId" required><br><br>
 
 <input type="text" name="customername" id="customername"  placeholder="Customer Name" required> <br><br>
 
 <input type="text" name="dateofenquiry" id="dateofenquiry" placeholder="Enter Dateof Enquiry"
                    onfocus="(this.type='date')"> <br><br>
                    
<input type="text" name="lastfollowed" id="lastfollowed" placeholder="Enter LastFollowed Date"
                    onfocus="(this.type='date')"><br><br>
                    
 <input type="text" name="nextfollowdate" id="nextfollowdate" placeholder="Enter Nextfollow Date"
                    onfocus="(this.type='date')"><br><br>
                    
<input type="text" name="channel" id="channel" placeholder="Enter Channel details" required>
<br><br>

<input type="text" name="status" id="status" placeholder="Enter Pipeline Status" required>
 <br><br>
 
 <input type="number" name="ordervalue" id="ordervalue" placeholder="Order Value" required> <br><br>
 
 <input type="text" name="location" id="location" placeholder="Location" required> <br><br>
 
  <input type="number" name="phone" id="phone" placeholder="Enter Phone Number" required> <br><br>
  
 <input type="text" id="instaid" placeholder="Insta Id" name="instaid"> <br><br>
 
<input type="email" name="emailid" id="emailid" placeholder="Email Address" required>   <br><br>

<input type="text" name="ordertype" id="ordertype" placeholder="Order type" required>  <br><br><br>

<input type="submit" Value="Submit" id="newpipelinesubmit"><br>

<p id="newpipelinestatus"></p>
</form>
  -->
  
<form id="newpipeline" class="form-horizontal" method="post">
   <h3 class="text-primary">New Pipeline</h3>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input required type="text" class="form-control" id="pipelineid" placeholder=" PipelineId" name="pipelineid" >
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="email">CusName:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="customername" placeholder="Customer Name" name="customername" required>
        </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email">DateEnqu:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="dateofenquiry" placeholder="Date of Enquiry" name="dateofenquiry" 
        onfocus="(this.type='date')" required>
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
      <label class="control-label col-sm-2" for="email">DateEnqu:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nextfollowdate" placeholder="Next Follow Date" name="nextfollowdate" 
        onfocus="(this.type='date')" required>
        </div>
        </div>  
        
       
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Channel :</label>
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
      <label class="control-label col-sm-2" for="email">Status :</label>
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
      <label class="control-label col-sm-2" for="email"> OrderValue: </label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="ordervalue" placeholder="Order Value " name="ordervalue" required>
       </div>
        </div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Location: </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="location" placeholder="Location " name="location" required>
       </div>
        </div>
        
            <div class="form-group">
      <label class="control-label col-sm-2" for="email"> Phone : </label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="phone" placeholder="Phone Number " name="phone" required>
      
       </div>
        </div>
        
             <div class="form-group">
      <label class="control-label col-sm-2" for="email"> InstagramID: </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="instaid" placeholder="Instagram ID" name="instaid" required>
       </div>
        </div>
        
              <div class="form-group">
      <label class="control-label col-sm-2" for="email"> EmailID: </label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="emailid" placeholder="Email ID" name="email" required>
       </div>
        </div>
        
          <div class="form-group">
      <label class="control-label col-sm-2" for="email"> OrderType: </label>
      <div class="col-sm-10">
        <select  class="form-control" name="ordertype" id="ordertype">
  <option value="HMS7">HMS7</option>
  <option value="HMC7">HMC7</option>
  <option value="HMS9">HMS9</option>
  <option value="HMC9">HMC9</option>
   <option value="HMS12">HMS12</option>
  <option value="HMC12">HMC12</option>
  <option value="MM1S7">MM1S7</option>
  <option value="MM1C7">MM1C7</option>
   <option value="MM2S7">MM2S7</option>
  <option value="MM2C7">MM2C7</option>
  
</select>
         </div>
        </div>   
     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="newpipelinesubmit" >Submit</button>
      </div>
     </div>
     <p id="newpipelinestatus"></p>
     
     
  </form>
  
  <!-- EXPORT TO EXCEL -->
  
  <div id="exporttoexcel"> 
  
  
  
  
  
  
  
  
  </div>
 
   
   
   <!-- LAST FOLLOW UPDATE -->
   
      <!--  
   <form  method="post" id="lastfollowupdate" >
<h1>Last Follow Date Update</h1>
 <input type="text" name="pipelineid" id="lastfollowpipelineid" placeholder=" Enter Valid PipelineId" required><br><br>
 <input type="text" name="lastfollowed" id="lastfollowdate" placeholder="Enter LastFollowed Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="nextfollowdate" id="nextfollowdateid" placeholder="Enter Nextfollow Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="submit" Value="Submit" id="lastfollowsubmit">
 
 <p id="lastfollowdatestatus"></p>
</form>-->
   
   
 <form id="lastfollowupdate" class="form-horizontal" method="post">
 <h3 class="text-primary">Last FollowDate Update</h3>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="lastfollowpipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email">LFDate:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="lastfollowdate" placeholder="Last Followed Date" name="lastfollowed" 
        onfocus="(this.type='date')" required>
         </div>
        </div>
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">NextFDate:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nextfollowdateid" placeholder="Last Followed Date" name="nextfollowdate" 
        onfocus="(this.type='date')" required>
         </div>
        </div> 
           
        
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="lastfollowsubmit">Submit</button>
      </div>
      
    </div>
    
     <p id="lastfollowdatestatus"></p>
        </form>  

        
        
   <!-- STATUS UPDATE -->
   
   
   <form id="statusupdate" class="form-horizontal" method="post">
 <h3 class="text-primary">Status Update</h3>

    <div class="form-group">
      <label class="control-label col-sm-2" >PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="statuspipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" >Status:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="statusmessage" placeholder=" Status" name="statusmsg" required>
        </div>
        </div>
        
         <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="statussubmit" >Submit</button>
      </div>
    </div>
    <p id="responseDiv"> </p>
        </form>
   
  
   
   
  
   
     <!-- 
       <form method="post" id="statusupdate">   
       <h1>Status Update</h1><br> 
    <input type="text" name="firstname" id="statuspipelineid"><br><br> 
    <input type="text" name="lastname" id="statusmessage"><br><br> 
    <input type="submit" name="submit" id="statussubmit" ><br><br> 
   <p id="responseDiv"> </p>
     </form>   -->   
     
        
       
       <!-- SALES UPDATE -->
       
         <!--<form action="saleupdate" method="post">
 <h1>Sales Update</h1>
<input type="text" name="salespipelineid" id="salespipelineid" placeholder="PipelineId" required><br><br>
 <input type="text" name="saledate" id="saledate"  placeholder="Enter Sale Date"
                    onfocus="(this.type='date')"><br><br>
 <input type="text" name="paymentmode" id="paymentmode" placeholder="Enter Payment Mode" required><br><br>
 <input type="submit" Value="Submit" ID="salessubmit">
 
 <p id="salesupdatestatus"></p>
</form>  -->
       
        <form id="salesupdate" class="form-horizontal" action="newEnquiry()">
 <h3 class="text-primary">Sales Update</h3>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">PipelineId:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="salespipelineid" placeholder=" PipelineId" name="pipelineid" required>
        </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="pipelineid">Status:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="saledate" placeholder=" Sales Date" name="saledate" onfocus="(this.type='date')" required>
      </div>
        </div>
        
           <div class="form-group">
      <label class="control-label col-sm-2" for="email"> PaymentMode: </label>
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
        <button type="submit" class="btn btn-default" ID="salessubmit">Submit</button>
      </div>
    </div>
    
     <p id="salesupdatestatus"></p>
        </form>
        
        
      <!-- Filters -->  
       <br>
       
       <div id="filtersearch">
       <div class="row" >
        <form>
      <div class="form-row" id="reports">
    
    <div class="form-group col-md-2">
      <label for="inputZip">Channel</label>
      <input type="text" class="form-control" id="channelreport">
    </div>
     <div class="form-group col-md-2">
      <label for="inputZip">Location</label>
      <input type="text" class="form-control" id="locationreport">
    </div>
     <div class="form-group col-md-2">
      <label for="inputZip">Date</label>
      <input type="text" class="form-control" id="datereport">
    </div>
     <div class="form-group col-md-2">
      <label for="inputZip">Ordertype</label>
      <input type="text" class="form-control" id="ordertypereport">

    </div>
     <div class="form-group col-md-2">
      <label for="inputZip">PaymentMode</label>
      <input type="text" class="form-control" id="paymentmodereport">
    </div>
     <div class="form-group col-md-2">
      <label for="inputZip">Status</label>
      <input type="text" class="form-control" id="statusreport">
    </div>
   </div>
   
   </form>
  </div>
  
   <!-- Report Results -->
  
   

        

<div class="row">
<div  id="orderlistreports">
 <ul class="list-group list-group-flush " id="orderlistreport">
  </ul>
</div>
  </div>
  

 </div>
  
         
  </div>
        </div>
        </div>
        
        
   </body>
</html>
<!-- <h1 class="text-primary">Welcome to Pipeline </h1>
<a href="newpipeline">NewPipeline</a><br><br>
<a href="statusupdateview">Status Update</a><br><br>
<a href="lastfollowedview">LastFollow Update</a><br><br>
<a href="salesupdateview">Sales Update</a><br><br>
<a href="logout">Logout</a><br> -->