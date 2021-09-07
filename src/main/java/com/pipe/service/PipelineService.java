package com.pipe.service;

import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pipe.model.PipelineMoniter;
import com.pipe.repositary.PipelineRepositary;
@Service
public class PipelineService implements PipelineMoniterInterface  {
	public PipelineService() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Autowired
	PipelineRepositary pipelinerepositary;
	

	public boolean updateStatus(long pipelineId,String status) {
		PipelineMoniter pipemoniter=new PipelineMoniter();
		boolean statusupdate=false;
		Optional<PipelineMoniter> p= pipelinerepositary.findById(pipelineId);
		if(p.isPresent()){
		 pipemoniter=p.get();
		pipemoniter.setStatus(status);
		pipemoniter=pipelinerepositary.save(pipemoniter);
		statusupdate=true;
		}
		
	return statusupdate;
		 
	}
	public PipelineMoniter newPipeline(long pipelineid,String customername,String channel,String status,long ordervalue,
			String location,long phone,String instaid,Date enquirydate,String email,String ordertype,Date lastfollowed,Date nextfollowdate) {
		
		PipelineMoniter pipelinemoniterobj=new PipelineMoniter();
		pipelinemoniterobj.setPipelineId(pipelineid);
		pipelinemoniterobj.setCustomerName(customername);	
		pipelinemoniterobj.setChannel(channel);
		pipelinemoniterobj.setStatus(status);
		pipelinemoniterobj.setOrderType(ordertype);
		pipelinemoniterobj.setOrderValue(ordervalue);
		pipelinemoniterobj.setEmail(email);
		pipelinemoniterobj.setPhone(phone);
		pipelinemoniterobj.setInstagramId(instaid);
		pipelinemoniterobj.setLocation(location);
		pipelinemoniterobj.setDateofEnquiry(enquirydate);
		pipelinemoniterobj.setLastFollowed(lastfollowed);
		/*LocalDate today =  LocalDate.now();
		LocalDate tomorrow = today.plusDays(7); 
		Date s=Date.from(tomorrow.atStartOfDay()
			      .atZone(ZoneId.systemDefault())
			      .toInstant());*/
		pipelinemoniterobj.setNextFollow(nextfollowdate);
		
		return pipelinerepositary.save(pipelinemoniterobj);
		
	}
public boolean updateLastFollowDate(Long pipelineId,Date lastfollowdate,Date nextfollowdate) {
	
	Optional<PipelineMoniter> p= pipelinerepositary.findById(pipelineId);
	boolean lastfollowupdate=false;
	if(p.isPresent()) {
	PipelineMoniter pipemoniter=p.get();
	pipemoniter.setLastFollowed(lastfollowdate);
	pipemoniter.setNextFollow(nextfollowdate);
	pipelinerepositary.save(pipemoniter);
	 lastfollowupdate=true;
	}
	
	return lastfollowupdate;
	}
public boolean saleUpdate(Long pipelineId,Date saleDate,String paymentMode) {
	
	Optional<PipelineMoniter> p= pipelinerepositary.findById(pipelineId);
	boolean saleupdate=false;
	if(p.isPresent()) {
	PipelineMoniter pipemoniter=p.get();
	pipemoniter.setSaleDate(saleDate);
	pipemoniter.setPaymentMode(paymentMode);
	pipelinerepositary.save(pipemoniter);
	 saleupdate=true;
	}
	return saleupdate;
}


	}
