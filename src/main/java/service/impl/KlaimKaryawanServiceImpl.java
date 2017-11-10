package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.KlaimKaryawanDao;
import entity.Tbl_Klaim;
import service.KlaimKaryawanService;
@Service("klaimKaryawanService")
public class KlaimKaryawanServiceImpl implements KlaimKaryawanService{

		@Autowired
		KlaimKaryawanDao klaimKaryawanDao;
	@Override
	public void save(Tbl_Klaim klaimKaryawan) {
		// TODO Auto-generated method stub
		klaimKaryawanDao.save(klaimKaryawan);
	}

	@Override
	public void update(Tbl_Klaim klaimKaryawan) {
		// TODO Auto-generated method stub
		klaimKaryawanDao.update(klaimKaryawan);
	}

	@Override
	public void delete(String kodeKlaim) {
		// TODO Auto-generated method stub
		klaimKaryawanDao.delete(kodeKlaim);
	}

	@Override
	public List<Tbl_Klaim> findAll() {
		// TODO Auto-generated method stub
		return klaimKaryawanDao.findAll();
	}

	@Override
	public Tbl_Klaim findOne(String kodeKlaim) {
		// TODO Auto-generated method stub
		return klaimKaryawanDao.findOne(kodeKlaim);
	}

}
