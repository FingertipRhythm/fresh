package com.service;

import com.pojo.Giveuser;

public interface GiveuserService {
		//升级为个人供应商
		int findAddgr(Giveuser  gv);
		//升级为公司供应商
		int findAddgs(Giveuser gss);
		
		//判断是否已经是 个人供应商或者公司供应商
		Giveuser findgid(Integer userid);
		
		
		
		Giveuser findgiveuserByid(Integer gid);//通过id查找供应商
}
