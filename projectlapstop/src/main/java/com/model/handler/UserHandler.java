package com.model.handler;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.model.entity.BillingAddress;
import com.model.service.BillingAddressService;





@Component
public class UserHandler {
	
	@Autowired
	private BillingAddressService bas;

	
	
	public BillingAddress initFlow(){
		return new BillingAddress();
	}
	
	
	public String validateDetails(BillingAddress bs,MessageContext messageContext){
		String status = "success";
		
		
		if(bs.getPlotNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"plotNo").defaultText("plot no cannot be Empty").build());
			status = "failure";
		}
		if(bs.getStreetName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"streetName").defaultText("street cannot be Empty").build());
			status = "failure";
		}
		if(bs.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("city cannot be Empty").build());
			status = "failure";
		}
		if(bs.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText(" state cannot be Empty").build());
			status = "failure";
		}
		if(bs.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText("country cannot be Empty").build());
			status = "failure";
		}
		
		
		bas.add(bs);
				return status;
		
	}

	

}