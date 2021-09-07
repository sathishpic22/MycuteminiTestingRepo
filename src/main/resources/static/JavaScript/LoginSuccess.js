$(document).ready(function(){
$("#lastfollowupdate").hide();
$("#statusupdate").hide();
$("#salesupdate").hide();
$("#searchresults").hide();
$("#reports").hide();



 $("#newpipelineview").click(function(){

    $("#lastfollowupdate").hide();
$("#statusupdate").hide();
$("#salesupdate").hide();
$("#reports").hide();
	    $("#searchresults").hide();
    $("#newpipeline").show();

 });

  $("#lastfollowedview").click(function(){
$("#statusupdate").hide();
$("#salesupdate").hide();
$("#reports").hide();
	$("#newpipeline").hide();
	$("#searchresults").hide();
	
$("#lastfollowupdate").show();
 

});

$("#statusupdateview").click(function(){
$("#salesupdate").hide();
$("#reports").hide();
	$("#newpipeline").hide();
$("#searchresults").hide();
  $("#lastfollowupdate").hide();
	
$("#statusupdate").show();
 

});

$("#salesupdateview").click(function(){

    $("#newpipeline").hide();
  $("#lastfollowupdate").hide();
	$("#statusupdate").hide();
$("#searchresults").hide();
	$("#reports").hide();
$("#salesupdate").show();
 

   });
   
   $("#pipelinereports").click(function(){

    $("#newpipeline").hide();
  $("#lastfollowupdate").hide();
	$("#statusupdate").hide();
$("#salesupdate").hide();
$("#searchresults").hide();

 $("#reports").show();

   });
   
  
 });	




// STATUS UPDATE AJAX

$(document).on('click', '#statussubmit', function(e){
    e.preventDefault();
statusUpdateAjax();
 $("#statuspipelineid").val("");
    $("#statusmessage").val("");
    
});

    function statusUpdateAjax(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/statusupdate",
        data:{pipelineid:$("#statuspipelineid").val(),statusmessage:$("#statusmessage").val()},

        success: function (response){

   

    $("#responseDiv").html("<b>"+ response.success +"</b>");
   
	   
        },
        error: function (e) {
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}


//LAST FOLLOW UPDATE


$(document).on('click', '#lastfollowsubmit', function(e){
    e.preventDefault();
lastFollowUpdateAjax()
 
     $("#lastfollowpipelineid").val("");
    $("#lastfollowdate").val("");
     $("#nextfollowdateid").val("");
});



    function lastFollowUpdateAjax(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/lastfollowdateform",
        data:{pipelineid:$("#lastfollowpipelineid").val(),lastfollowdate:$("#lastfollowdate").val(),nextfollowdatenew:$("#nextfollowdateid").val()},

        success: function (response){

   

    $("#lastfollowdatestatus").html("<b>"+ response.success +"</b>");
   
	   
        },
        error: function (e) {
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}


// SALES UPDATE


$(document).on('click', '#salessubmit', function(e){
    e.preventDefault();
salesUpdateAjax();
 
 $("#salespipelineid").val("");
    $("#saledate").val("");
     $("#paymentmode").val("");

});



    function salesUpdateAjax(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/saleupdate",
        data:{pipelineid:$("#salespipelineid").val(),saledateid:$("#saledate").val(),paymentmode:$("#paymentmode").val()},

        success: function (response){

   

    $("#salesupdatestatus").html("<b>"+ response.success +"</b>");
   
	   
        },
        error: function (e) {
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}

//NEWPIPE LINE ENTRY


$(document).on('click', '#newpipelinesubmit', function(e){

   e.preventDefault();
newPipelineUpdateAjax();



$("#pipelineid").val("");
    $("#customername").val("");
     $("#dateofenquiry").val("");
     $("#lastfollowed").val("");
    $("#nextfollowdate").val("");
     $("#channel").val("");
     $("#status").val("");
    $("#ordervalue").val("");
     $("#location").val("");
     $("#phone").val("");
    $("#instaid").val("");
     $("#emailid").val("");
 $("#ordertype").val("");
 
 });

 



    function newPipelineUpdateAjax(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/newpipeline",
        data:{newpipelineid:$("#pipelineid").val(),customername:$("#customername").val(),dateofenquiry:$("#dateofenquiry").val(),
        lastfollowed:$("#lastfollowed").val(),nextfollowdate:$("#nextfollowdate").val(),channel:$("#channel").val(),
        status:$("#status").val(),ordervalue:$("#ordervalue").val(),location:$("#location").val(),
        phone:$("#phone").val(),instaid:$("#instaid").val(),emailid:$("#emailid").val(),
        ordertype:$("#ordertype").val()


    },

        success: function (response){


    $("#newpipelinestatus").html("<b>New Pipeline Added Successfully </b>");
   
	   
        },
        error: function (e) {
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}

// AUTO COMPLETE JQUERY


/*
$(document).on('keyup', '#input', function(e){
    e.preventDefault();
textSearch()
 
});




 function textSearch(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/search",
        data:{ searchText:$("#input").val()


    },

        success: function (response){


            var searchtext=JSON.stringify(response);
           

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId +item.customerName +"</li>"  ;
        });
   
	    $("#orderlist").html(text);
        },
        error: function (e) {
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}

*/

 //$('html').keyup(function(e){if(e.keyCode == 8)alert('backspace trapped')}) 
 
 //event.keyCode == 46

// Pipeline Search

$(document).on('keyup' , '#pipelinesearchtext', function(e){
    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineSearch();
	
}

pipelineSearch();
	

});



function pipelineSearch(){
       
	
    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/search",
        data:{ searchText:$("#pipelinesearchtext").val()


    },
    
    

        success: function (response){


            var searchtext=JSON.stringify(response);
           

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<a id='"+ item.pipelineId +"'>" +"<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>" + "</a>"  ;
        });
   
	    $("#orderlistsearch").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}

$(document).on('focusin' , '#pipelinesearchtext', function(e){
    e.preventDefault();
    $("#searchresults").show();
   });
   
 
   // Filter Reports
   
 
   
   $(document).on('keyup' , '#channelreport', function(e){
    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineFilterSearch();
	
}

pipelineFilterSearch();
	

});

 $(document).on('keyup' , '#locationreport', function(e){
    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineFilterSearch();
	
}

pipelineFilterSearch();
	

});

 $(document).on('keyup' , '#ordertypereport', function(e){
    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineFilterSearch();
	
}

pipelineFilterSearch();
	

});


 $(document).on('keyup' , '#paymentmodereport', function(e){
    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineFilterSearch();
	
}

pipelineFilterSearch();
	

});


$(document).on('keyup' , '#statusreport', function(e){

    e.preventDefault();
    if((e.keyCode == 8) || (e.keyCode == 46)){
pipelineFilterSearch();
	
}

pipelineFilterSearch();
	

});


 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
/*

function pipelineFilterSearch(){

    $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/filtersearch",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
}

*/

// channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport



function pipelineFilterSearch(){
	
	
	var inputcount=0;
	
var inputarray = new Array($("#channelreport").val(),$("#locationreport").val() ,$("#datereport").val(),$("#ordertypereport").val(),
 $("#paymentmodereport").val(),$("#statusreport").val());
	
	
     
     for (var i=0;i<6;i++){
	
	if(inputarray[i]!=""){
		
		inputcount++;
	}
	
}
     if(inputcount==1){
	
	 $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085/filtersearchoneinput",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
}
else if(inputcount==0){
	var text='';
	$("#orderlistreport").html(text);
	
	
}


else if(inputcount==2){
	
	
	
	 $.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085//filtersearchtwoinputs",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
	
}

else if(inputcount==3){
	
	$.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085//filtersearchthreeinputs",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
	
	
}
else if(inputcount==4){
	
	
	$.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085//filtersearchfourinputs",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
	
	
}

else if(inputcount==5){
	
	$.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085//filtersearchfiveinputs",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
	
	
}
else if(inputcount==6){
	
	
	$.ajax({
        type: "POST",
 dataType: "json",
        url: "http://localhost:8085//filtersearchsixinputs",
        data:{ channelReport:$("#channelreport").val(),locationReport:$("#locationreport").val(),
        dateReport:$("#datereport").val(),ordertypeReport:$("#ordertypereport").val(),
        paymentModeReport:$("#paymentmodereport").val(),statusReport:$("#statusreport").val()


    },
    
    

        success: function (response){

           var text='';


           response.forEach(function(item){

                //pipelineId,dateofEnquiry,,Channel,status,nextFollow,
               // lastFollowed,orderValue,location,phone,instagramId,email,orderType,saleDate,paymentMode


             text+="<li class='list-group-item'>" + item.pipelineId + "&nbsp; "+item.customerName +"</li>"  ;
        });
   
	    $("#orderlistreport").html(text);
        },
        error: function (e) {
	
	
var finalResponse = JSON.stringify(e);
            
console.log(finalResponse);
        }
    });
	
	
	
}	


  
}










