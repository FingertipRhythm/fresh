package com.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ResourceDao;
import com.pojo.FreshProduct;
import com.pojo.Resources;
import com.pojo.Resourcesdetails;
import com.service.ResourceService;
@Service
public class ResourceServiceImpl implements ResourceService {
@Autowired
private ResourceDao resourcedao;
	
	//Ìí¼Ó×ÊÔ´
	public void addResource(Resources resource) {
		resourcedao.addResource(resource);
	}

	public void addResourcedetail(Resourcesdetails resourcesdetails) {
		resourcedao.addResourcedetail(resourcesdetails);
	}

	public List<Resources> findresource(Integer gid) {
		// TODO Auto-generated method stub
		return resourcedao.findresource(gid);
	}

	public List<Resourcesdetails> findresourcedetails(Integer resourcesid) {
		// TODO Auto-generated method stub
		return resourcedao.findresourcedetails(resourcesid);
	}

	public List<Resources> findAllResource() {
		// TODO Auto-generated method stub
		return resourcedao.findAllResource();
	}

	public Resources findresourcebyid(Integer resourcesid) {
		// TODO Auto-generated method stub
		return resourcedao.findresourcebyid(resourcesid);
	}

	 

}
