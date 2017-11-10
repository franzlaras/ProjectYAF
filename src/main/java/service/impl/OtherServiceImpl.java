package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.OtherDao;
import entity.Tbl_Other;
import service.OtherService;
@Service("otherService")
public class OtherServiceImpl implements OtherService{
	@Autowired
	private OtherDao otherDao;
	@Override
	public void save(Tbl_Other tbl_other) {
		// TODO Auto-generated method stub
		otherDao.save(tbl_other);		
	}

	@Override
	public void update(Tbl_Other tbl_other) {
	otherDao.update(tbl_other);	
	}

	@Override
	public void delete(String tbl_Other) {
		// TODO Auto-generated method stub
	otherDao.delete(tbl_Other);
	}

	@Override
	public List<Tbl_Other> findAll() {
		// TODO Auto-generated method stub
		return otherDao.findAll();
	}

	@Override
	public Tbl_Other findOne(String nama) {
		// TODO Auto-generated method stub
		return otherDao.findOne(nama);
	}

}
