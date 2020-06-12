package com.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PuruserDao;
import com.pojo.Puruser;
import com.service.PuruserService;
@Service
public class PuruserServicrImpl implements PuruserService {
	@Autowired
	private PuruserDao pd;
	public int findAddgr(Puruser gv) {
		return pd.findAddgr(gv);
	}

	public int findAddgs(Puruser gss) {
		// TODO Auto-generated method stub
		return pd.findAddgs(gss);
	}

	public Puruser findgid(Integer userid) {
		// TODO Auto-generated method stub
		return pd.findgid(userid);
	}

}
