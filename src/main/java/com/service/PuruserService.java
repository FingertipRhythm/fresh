package com.service;

import com.pojo.Puruser;

public interface PuruserService {

	//����Ϊ���˹�Ӧ��
	int findAddgr(Puruser  gv);
	
	
	//����Ϊ��˾��Ӧ��
	int findAddgs(Puruser gss);
	
	
	
	//�ж��Ƿ��Ѿ��� ���˹�Ӧ�̻��߹�˾��Ӧ��
	Puruser findgid(Integer userid);

}
