package com.service;

import java.util.List;

import com.pojo.FreshProduct;
import com.pojo.Resources;
import com.pojo.Resourcesdetails;

public interface ResourceService {
	void addResource(Resources resource);
	void addResourcedetail(Resourcesdetails resourcesdetails);
	 List<Resources> findAllResource();//��ѯ��������Դ��
	 Resources findresourcebyid(Integer resourcesid);//������Դ��id��ѯ����Դ��
	List<Resources> findresource(Integer gid);//���ݹ�Ӧ��id��ѯ����Դ��
	List<Resourcesdetails>  findresourcedetails(Integer resourcesid);//������Դ����ѯ����Դ������
}
