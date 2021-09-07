package com.pipe.controller;
import java.io.IOException;
//testing dasdasdsa
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.pipe.model.PipelineMoniter;
import com.pipe.model.User;
import com.pipe.repositary.PipelineRepositary;
import com.pipe.repositary.UserRepositary;
import com.pipe.service.ExportService;
import com.pipe.service.PipelineService;
@Controller
public class MainController {
	@Autowired
	PipelineRepositary pipelinerepositery;
	@Autowired
	UserRepositary userrepositery;
	@Autowired
	PipelineService pipelineservice;
	
	@RequestMapping("/" )
public ModelAndView index() {

	return new ModelAndView("index");
	
		
	}	
	//testing 

@RequestMapping("/login")
public ModelAndView logins(
		@RequestParam("username") String username,
		@RequestParam("password") String password, Model m)  {
	
	
	List<User> userlist=(List<User>) userrepositery.findAll();
	Iterator<User> i=userlist.iterator();
	
	
	while(i.hasNext()) {
		User users=i.next();
	if(users.getUsername().equalsIgnoreCase(username)&&users.getPassword().equalsIgnoreCase(password)&&users.getUserType().equalsIgnoreCase("user")) {
		return new ModelAndView("loginsuccess");
		
	}
	else if(users.getUsername().equalsIgnoreCase(username)&&users.getPassword().equalsIgnoreCase(password)&&users.getUserType().equalsIgnoreCase("user")) {
		
	}
	
	}
	
	String message="The Username or Passwod entered wrong";
	m.addAttribute("errormessage",message);
	
	return new ModelAndView( "index");
}

@RequestMapping("Export/inbetweendate")
public void exportToExcelInbetween(HttpServletResponse response,Model m,@RequestParam("startdate") @DateTimeFormat(pattern="yyyy-MM-dd") Date date1,@RequestParam("enddate") @DateTimeFormat(pattern="yyyy-MM-dd") Date date2) throws IOException {
    response.setContentType("application/octet-stream");
    DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
    String currentDateTime = dateFormatter.format(new Date());
     
    String headerKey = "Content-Disposition";
    String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
    response.setHeader(headerKey, headerValue);
     
    List<PipelineMoniter> listUsers = pipelinerepositery.expoetInbetweenData(date1,date2);
    
 if(listUsers.size()>=1) {
	 
	 ExportService excelExporter = new ExportService(listUsers);
     
	    excelExporter.export(response); 
	 
 }
 
 
}  


@RequestMapping("Export/year")
public void exportYear(HttpServletResponse response,@RequestParam("exportyear") int year) throws IOException {
    response.setContentType("application/octet-stream");
    DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
    String currentDateTime = dateFormatter.format(new Date());
    List<PipelineMoniter> listUsers;
    String headerKey = "Content-Disposition";
    String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
    response.setHeader(headerKey, headerValue);
    
   
    	listUsers = pipelinerepositery.expoetYearData(year);
    	
   ExportService excelExporter = new ExportService(listUsers);
     
    excelExporter.export(response);    
}  

@RequestMapping("Export/month")
public void exportMonth(HttpServletResponse response,@RequestParam("exportyear") int year,@RequestParam("exportmonth") int month) throws IOException {
    response.setContentType("application/octet-stream");
    DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
    String currentDateTime = dateFormatter.format(new Date());
    List<PipelineMoniter> listUsers;
    String headerKey = "Content-Disposition";
    String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
    response.setHeader(headerKey, headerValue);
    
   
    	listUsers = pipelinerepositery.expoetMonthData(year,month);
    	
   ExportService excelExporter = new ExportService(listUsers);
     
    excelExporter.export(response);    
}  



@RequestMapping("/search")
 public @ResponseBody List<PipelineMoniter> getUser(@RequestParam("searchText") String searchText) throws ParseException

{

	 long pipelineid=0;
	 long phone=0;
	boolean num=true;

	
	try {
		
		Long.parseLong(searchText);
		
		
		
	}
	
	catch(Exception e) {
		
		num=false;
		
	}

	if(num==true) {
		
		 pipelineid=Long.parseLong(searchText);
		 phone=Long.parseLong(searchText);
		
	}
	
    String customerName=searchText;
    String email=searchText;
    String instagramid=searchText;
    SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
 
    	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	//List<PipelineMoniter> pipe= (List<PipelineMoniter>) pipelinerepositery.findAll();
    	   List<PipelineMoniter>   pipe=pipelinerepositery.textSearch(pipelineid,customerName,email,phone,instagramid,dateofenquiry);
    	    
	

	//pipelineID,customername,email,phone,instaid,dateof enquiry
	
	return pipe;

	
	}
	

@RequestMapping("/filtersearchoneinput")
public @ResponseBody List<PipelineMoniter> filterSearchoneInput(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchOneInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}




@RequestMapping("/filtersearchtwoinputs")
public @ResponseBody List<PipelineMoniter> filterSearchTwoInputs(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchTwoInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}


@RequestMapping("/filtersearchthreeinputs")
public @ResponseBody List<PipelineMoniter> filterSearchThreeInputs(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchThreeInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}


@RequestMapping("/filtersearchfourinputs")
public @ResponseBody List<PipelineMoniter> filterSearchFourInputs(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchFourInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}



@RequestMapping("/filtersearchfiveinputs")
public @ResponseBody List<PipelineMoniter> filterSearchFiveInputs(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchFiveInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}


@RequestMapping("/filtersearchsixinputs")
public @ResponseBody List<PipelineMoniter> filterSearchSixInputs(
		@RequestParam("channelReport") String channelReport,
		@RequestParam("locationReport") String locationReport,
		@RequestParam("ordertypeReport") String ordertypeReport,
		@RequestParam("paymentModeReport") String paymentModeReport,
		@RequestParam("statusReport") String statusReport
		) throws ParseException

{

	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd"); 
	 
	   Date dateofenquiry=formatter1.parse("20-01-2021");  
	
	 // channelreport,locationreport,datereport,ordertypereport,paymentmodereport,statusreport
	
	   List<PipelineMoniter>   pipe=pipelinerepositery.filterSearchSixInput(channelReport,locationReport,dateofenquiry,ordertypeReport,paymentModeReport,statusReport);

	   
	   return pipe;
	
	}



	





@RequestMapping("/saveUser")
@ResponseBody 
public String saveUser(@RequestParam("name") String name,
        @RequestParam("lastname") String lastname)
{
	JSONObject resObj = new JSONObject();
	

	try {
		resObj.put("username", name);
		resObj.put("lastname",lastname);
	}
catch(Exception e){
	System.out.print(e.getMessage());
}
	return resObj.toString();
	
	}

@RequestMapping("/test")
public  ModelAndView newPipeline() {
ModelAndView mv=new ModelAndView("loginsuccess");

mv.addObject("success", "test Working");
return mv;
}


@RequestMapping("/newpipeline")
@ResponseBody
public  String newPipeline(
		
			@RequestParam("newpipelineid") String pipelineid,
			@RequestParam("customername") String customername,
			@RequestParam("channel") String channel,
			@RequestParam("status") String status,
			@RequestParam("ordervalue") long ordervalue,
			@RequestParam("location") String location,
			@RequestParam("phone") long phone,
			@RequestParam("instaid") String instaid,
			@RequestParam("dateofenquiry") @DateTimeFormat(pattern="yyyy-MM-dd") Date enquirydate,
			@RequestParam("lastfollowed") @DateTimeFormat(pattern="yyyy-MM-dd") Date lastfollowed,
			@RequestParam("nextfollowdate") @DateTimeFormat(pattern="yyyy-MM-dd") Date  nextfollowdate,
			@RequestParam("emailid") String email,
			@RequestParam("ordertype") String ordertype) {
	System.out.println("success");
	
	long newpipelineid1=Long.parseLong(pipelineid);  

	
	
	PipelineMoniter newpipeline=null;
	
	
 newpipeline=pipelineservice.newPipeline(newpipelineid1, customername, channel, status, ordervalue, location, phone, instaid, 
		enquirydate, email, ordertype, lastfollowed, nextfollowdate);
 JSONObject resObj = new JSONObject();
 if(newpipeline!=null) {
	 
	resObj.put("success", "New Pipeline Added Successfully");
	 
	 
 }
			
	  return resObj.toString();
		
	}





@RequestMapping("/statusupdate")
@ResponseBody
public  String StatusUpdate(@RequestParam("pipelineid") String pipelineid,
		@RequestParam("statusmessage") String statusmsg) {
	
	System.out.println("success");
	
	long statuspipelineid=Long.parseLong(pipelineid);  

	JSONObject resObj = new JSONObject();




	if(pipelineservice.updateStatus(statuspipelineid, statusmsg)==true){
	
		resObj.put("success", "Status Updated successfully");
		}
	else {
		resObj.put("success", "Enter Valid PipelineId");
	}
	
	
	return resObj.toString();
}




@RequestMapping("/lastfollowdateform")
@ResponseBody
public String lastFollowForm(@RequestParam("pipelineid") String pipelineid,
		@RequestParam("lastfollowdate") @DateTimeFormat(pattern="yyyy-MM-dd") Date lastfollowed,
		@RequestParam("nextfollowdatenew") @DateTimeFormat(pattern="yyyy-MM-dd") Date nextfollowdate)
		 {
	
	long lastfollowpipelineid=Long.parseLong(pipelineid); 
	
	JSONObject resObj = new JSONObject();
	
	
	
	if(pipelineservice.updateLastFollowDate(lastfollowpipelineid, lastfollowed, nextfollowdate)==true) {
		
		resObj.put("success", "LastFollowDate Updated Successfully");
}
else {
	resObj.put("success", "Enter Valid PipelineId");
}

return resObj.toString();
	
}



@RequestMapping("/saleupdate")
@ResponseBody
public String salesUpdate(@RequestParam("pipelineid") String pipelineid,
		@RequestParam("saledateid") @DateTimeFormat(pattern="yyyy-MM-dd") Date saledate,
		@RequestParam("paymentmode") String paymentmode) {
long salesupdatepipelineid=Long.parseLong(pipelineid); 
	
	JSONObject resObj = new JSONObject();
	
	if(pipelineservice.saleUpdate(salesupdatepipelineid,saledate,paymentmode)==true) {
		
		resObj.put("success", "Sale Updated Successfully");
}
else {
	resObj.put("success", "Enter Valid PipelineId");
}

return resObj.toString();
	
}





@RequestMapping("logout")
public ModelAndView logout() {
	ModelAndView logoutview=new ModelAndView();
	logoutview.addObject("logoutmessage", "Logout Successfull");
	logoutview.setViewName("index");
	return logoutview;
	
}


}
