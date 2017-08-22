package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.CommodityCatalog;

public interface ICommodityCatalogDao {
	
	public int getRowCount();//获取总行数
	public void insertCommodityCatalog(CommodityCatalog commodityCatalog);
	public List<CommodityCatalog> getAllCommodityCatalogs();//获得所有商品目录
	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog);//搜索商品目录
}
