package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.AppointmentDao;
import com.wjw.laboratory.entity.Appointment;
import com.wjw.laboratory.service.AppointmentService;

@Service("appointmentService")
public class AppointmentServiceImpl extends BaseServiceImpl<Appointment> implements AppointmentService {
	
	private AppointmentDao appointmentDao;
	
	@Resource 
	public void setAppointmentDao(AppointmentDao appointmentDao) {
		super.setBaseDao(appointmentDao);
		this.appointmentDao = appointmentDao;
	}
}
