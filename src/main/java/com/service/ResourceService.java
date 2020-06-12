package com.service;

import java.util.List;

import com.pojo.FreshProduct;
import com.pojo.Resources;
import com.pojo.Resourcesdetails;

public interface ResourceService {
	void addResource(Resources resource);
	void addResourcedetail(Resourcesdetails resourcesdetails);
	 List<Resources> findAllResource();//查询出所有资源单
	 Resources findresourcebyid(Integer resourcesid);//根据资源单id查询出资源单
	List<Resources> findresource(Integer gid);//根据供应商id查询出资源单
	List<Resourcesdetails>  findresourcedetails(Integer resourcesid);//根据资源单查询出资源单详情
}
