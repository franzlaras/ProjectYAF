package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DetailKaryawanDao;
import entity.Tbl_DetailKaryawan;
import service.DetailKaryawanService;

@Service("detailKaryawanService")
public class DetailKaryawanServiceImpl implements DetailKaryawanService{

		@Autowired 
		DetailKaryawanDao detailKaryawanDao;
		
	@Override
	public void save(Tbl_DetailKaryawan detailKaryawan) {
		detailKaryawanDao.save(detailKaryawan);
	}

	@Override
	public void update(Tbl_DetailKaryawan detailKaryawan) {
		detailKaryawanDao.update(detailKaryawan);
		
	}

	@Override
	public void delete(String kodeDetail) {
		// TODO Auto-generated method stub
		detailKaryawanDao.delete(kodeDetail);
	}

	@Override
	public List<Tbl_DetailKaryawan> findAll() {
		// TODO Auto-generated method stub
		return detailKaryawanDao.findAll();
	}

	@Override
	public Tbl_DetailKaryawan findOne(String kodeDetail) {
		// TODO Auto-generated method stub
		return detailKaryawanDao.findOne(kodeDetail);
	}

}
