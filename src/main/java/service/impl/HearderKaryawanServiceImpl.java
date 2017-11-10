package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.HeaderKaryawanDao;
import entity.Tbl_HeaderKaryawan;
import service.HeaderKaryawanService;

@Service("headerKaryawanService")
public class HearderKaryawanServiceImpl implements HeaderKaryawanService{

	@Autowired
	HeaderKaryawanDao headerKaryawanDao;
	@Override
	public void save(Tbl_HeaderKaryawan headerKaryawan) {
		// TODO Auto-generated method stub
		headerKaryawanDao.save(headerKaryawan);
	}

	@Override
	public void update(Tbl_HeaderKaryawan headerKaryawan) {
		// TODO Auto-generated method stub
		headerKaryawanDao.update(headerKaryawan);
	}

	@Override
	public void delete(String kodeHeader) {
		// TODO Auto-generated method stub
	headerKaryawanDao.delete(kodeHeader);
	}

	@Override
	public List<Tbl_HeaderKaryawan> findAll() {
		// TODO Auto-generated method stub
		return headerKaryawanDao.findAll();
	}

	@Override
	public Tbl_HeaderKaryawan findOne(String kodeHeader) {
		// TODO Auto-generated method stub
		return headerKaryawanDao.findOne(kodeHeader);
	}

}
