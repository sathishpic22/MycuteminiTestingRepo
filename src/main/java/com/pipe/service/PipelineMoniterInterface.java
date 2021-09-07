package com.pipe.service;

import java.util.Date;

public interface PipelineMoniterInterface {
	
	public boolean updateStatus(long pipelineId,String status);
	public boolean saleUpdate(Long pipelineId,Date saleDate,String paymentMode);
	public boolean updateLastFollowDate(Long pipelineId,Date lastupdate,Date nextfollowdate);

}
