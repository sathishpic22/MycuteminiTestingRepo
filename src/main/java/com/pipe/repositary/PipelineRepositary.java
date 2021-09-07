package com.pipe.repositary;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pipe.model.PipelineMoniter;
import com.pipe.model.User;
@Repository
public interface PipelineRepositary extends CrudRepository<PipelineMoniter,Long> {
	

	//@Query("SELECT u FROM PipelineMoniter u where  customerName like %:searchText%")
	
	@Query( "SELECT u FROM PipelineMoniter u where  pipelineId=?1 or customerName=?2 or email=?3 or phone=?4 or instagramId=?5 or dateofEnquiry=?6")
	List<PipelineMoniter> textSearch(long pipelineid,String customerName,String email,long phonenumber,String instaid,Date date);
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where  Channel=?1 or location=?2 or orderType=?4 or dateofEnquiry=?3  or paymentMode=?5 or status=?6")
	List<PipelineMoniter> filterSearchOneInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where ( (Channel=?1 and location=?2) or (Channel=?1 and dateofEnquiry=?3) or (Channel=?1 and orderType=?4) or (Channel=?1 and paymentMode=?5) or (Channel=?1 and status=?6) or (location=?2 and orderType=?4) or (location=?2 and dateofEnquiry=?3) or (location=?2 and paymentMode=?5) or (location=?2 and status=?6) or (dateofEnquiry=?3 and orderType=?4)  or (dateofEnquiry=?3 and paymentMode=?5)  or (dateofEnquiry=?3 and status=?6) or (orderType=?4  and  paymentMode=?5) or (orderType=?4  and  status=?6) or (paymentMode=?5 and status=?6))")
	List<PipelineMoniter> filterSearchTwoInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where  ((Channel=?1 and location=?2 and dateofEnquiry=?3) or (Channel=?1 and location=?2 and orderType=?4 ) or (Channel=?1 and location=?2 and paymentMode=?5 ) or (Channel=?1 and location=?2 and status=?6 ) or (location=?2 and dateofEnquiry=?3 and orderType=?4) or (location=?2 and dateofEnquiry=?3 and paymentMode=?5) or (location=?2 and dateofEnquiry=?3 and status=?6) or (dateofEnquiry=?3 and orderType=?4 and paymentMode=?5) or (dateofEnquiry=?3 and orderType=?4 and status=?6) or (orderType=?4 and paymentMode=?5 and status=?6))")
	List<PipelineMoniter> filterSearchThreeInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where  ((Channel=?1 and location=?2 and dateofEnquiry=?3 and orderType=?4) or (Channel=?1 and location=?2 and dateofEnquiry=?3 and paymentMode=?5) or (Channel=?1 and location=?2 and dateofEnquiry=?3 and status=?6) or (location=?2 and dateofEnquiry=?3 and orderType=?4 and paymentMode=?5) or (location=?2 and dateofEnquiry=?3 and orderType=?4 and status=?6) or (dateofEnquiry=?3 and orderType=?4 and paymentMode=?5 and status=?6))")
	List<PipelineMoniter> filterSearchFourInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where  ( (Channel=?1 and location=?2 and orderType=?4 and dateofEnquiry=?3  and paymentMode=?5) or (Channel=?1 and location=?2 and orderType=?4 and dateofEnquiry=?3  and status=?6) or ( location=?2 and orderType=?4 and dateofEnquiry=?3  and paymentMode=?5 and status=?6))")
	List<PipelineMoniter> filterSearchFiveInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	
	
	
	@Query( "SELECT u FROM PipelineMoniter u where  Channel=?1 and location=?2 and orderType=?4 and dateofEnquiry=?3  and paymentMode=?5 and status=?6")
	List<PipelineMoniter> filterSearchSixInput(String channel,String location,Date date,String ordertype,String paymentMode,String status);
	
	@Query( "SELECT u FROM PipelineMoniter u where dateofEnquiry BETWEEN ?1 AND ?2")
	List<PipelineMoniter> expoetInbetweenData(Date date1,Date date2);
	
	@Query( "SELECT u FROM PipelineMoniter u where YEAR(dateofEnquiry)=?1")
	List<PipelineMoniter> expoetYearData(int year);
	
	@Query( "SELECT u FROM PipelineMoniter u where YEAR(dateofEnquiry)=?1 and MONTH(dateofEnquiry)=?2")
	List<PipelineMoniter> expoetMonthData(int year,int month);
	
	


}
