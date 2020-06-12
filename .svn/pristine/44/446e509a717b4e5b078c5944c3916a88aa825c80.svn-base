package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.pojo.BillRelationship;
@Repository
public interface BillDao {
int addbill(Map<String,Object> map);
List<BillRelationship> findRelBypurid(Integer purchaseid);//根据采购单id查询关系表
BillRelationship findRelByrelationid(Integer relationshipid);//根据竞价id查询竞价表
}
