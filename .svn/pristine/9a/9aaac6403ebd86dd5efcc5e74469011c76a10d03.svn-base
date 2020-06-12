package com.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GiveuserDao;
import com.pojo.Giveuser;
import com.service.GiveuserService;
@Service
public class GiveuserServiceImpl implements GiveuserService {
	@Autowired
	private GiveuserDao giveuserdao;
	
	
	public int findAddgr(Giveuser gv) {
		
		return giveuserdao.findAddgr(gv);
	}


	public int findAddgs(Giveuser gss) {
		
		return giveuserdao.findAddgs(gss);
	}


	public Giveuser findgid(Integer userid) {
		
		
		return giveuserdao.findgid(userid);
	}


	public Giveuser findgiveuserByid(Integer gid) {
		// TODO Auto-generated method stub
		return giveuserdao.findgiveuserByid(gid);
	
	}

}