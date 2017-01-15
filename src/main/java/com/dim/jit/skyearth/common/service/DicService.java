package com.dim.jit.skyearth.common.service;

import java.util.List;

import com.dim.jit.skyearth.common.Dictionary;
import com.dim.jit.skyearth.common.dao.IDicDao;

public class DicService {

	IDicDao dicDao;

	// TODO 缓存处理
	public List<Dictionary> getDicByType(int type) {
		List<Dictionary> all = dicDao.findByHql("", null);
		return all;
	}

	public IDicDao getDicDao() {
		return dicDao;
	}

	public void setDicDao(IDicDao dicDao) {
		this.dicDao = dicDao;
	}

}