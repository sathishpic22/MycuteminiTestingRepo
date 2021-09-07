package com.pipe.model;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class PipelineMoniter {
	
	
	
	@Id
	private long pipelineId;
	@Temporal(TemporalType.DATE)
	private Date dateofEnquiry;
	private String customerName;
	private String Channel;
	private String status;
	@Temporal(TemporalType.DATE)
	private Date nextFollow;
	@Temporal(TemporalType.DATE)
	private Date lastFollowed;
	private long orderValue;
	private String location;
private long phone;
	private String instagramId;
	private String email;
	private String orderType;
	@Temporal(TemporalType.DATE)
	private Date saleDate;
	private String paymentMode;
	public PipelineMoniter() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PipelineMoniter(long pipelineId, Date dateofEnquiry, String customerName, String channel, String status,
			Date nextFollow, Date lastFollowed, long orderValue, String location, long phone, String instagramId,
			String email, String orderType, Date saleDate, String paymentMode) {
		super();
		this.pipelineId = pipelineId;
		this.dateofEnquiry = dateofEnquiry;
		this.customerName = customerName;
		Channel = channel;
		this.status = status;
		this.nextFollow = nextFollow;
		this.lastFollowed = lastFollowed;
		this.orderValue = orderValue;
		this.location = location;
		this.phone = phone;
		this.instagramId = instagramId;
		this.email = email;
		this.orderType = orderType;
		this.saleDate = saleDate;
		this.paymentMode = paymentMode;
	}

	public long getPipelineId() {
		return pipelineId;
	}
	public void setPipelineId(long pipelineId) {
		this.pipelineId = pipelineId;
	}
	public Date getDateofEnquiry() {
		return dateofEnquiry;
	}
	public void setDateofEnquiry(Date dateofEnquiry) {
		this.dateofEnquiry = dateofEnquiry;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getChannel() {
		return Channel;
	}
	public void setChannel(String channel) {
		Channel = channel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getNextFollow() {
		return nextFollow;
	}
	public void setNextFollow(Date nextFollow) {
		this.nextFollow = nextFollow;
	}
	public Date getLastFollowed() {
		return lastFollowed;
	}
	public void setLastFollowed(Date lastFollowed) {
		this.lastFollowed = lastFollowed;
	}
	public long getOrderValue() {
		return orderValue;
	}
	public void setOrderValue(long orderValue) {
		this.orderValue = orderValue;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getInstagramId() {
		return instagramId;
	}
	public void setInstagramId(String instagramId) {
		this.instagramId = instagramId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public Date getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(Date saleDate) {
		this.saleDate = saleDate;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	

}
