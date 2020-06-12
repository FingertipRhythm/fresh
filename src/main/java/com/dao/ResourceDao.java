package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.pojo.FreshProduct;
import com.pojo.Resources;
import com.pojo.Resourcesdetails;
@Repository
public interface ResourceDao {
 void addResource(Resources resource);
 void addResourcedetail(Resourcesdetails resourcesdetails);
 List<Resources> findAllResource();//查询出所有资源单
 Resources findresourcebyid(Integer resourcesid);//根据资源单id查询出资源单
 List<Resources> findresource(Integer gid);//根据供应商id查询出资源单
 List<Resourcesdetails>  findresourcedetails(Integer resourcesid);//根据资源单查询出资源单详情
 Resourcesdetails findresourcedetailsbydetailid(Integer detailsid);//根据资源详情单id查找资源详情单id
}
