package dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.OtherDao;
import entity.Tbl_Other;

@Repository
public class OtherDaoImpl implements OtherDao{

	@Autowired
	DataSource dataSource;
	
	@Override
	public void save(Tbl_Other tbl_Other) {
		
	}

	@Override
	public void update(Tbl_Other tbl_Other) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tbl_Other tbl_Other) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Tbl_Other> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tbl_Other findOne(String nama) {
		// TODO Auto-generated method stub
		return null;
	}

}
