package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.DetailKaryawanDao;
import entity.Tbl_DetailKaryawan;

@Repository
public class DetailKaryawanDaoImpl implements DetailKaryawanDao{

	@Autowired
	DataSource dataSource;	
	
	@Override
	public void save(Tbl_DetailKaryawan detailKaryawan) {
			
	}

	@Override
	public void update(Tbl_DetailKaryawan detailKaryawan) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tbl_DetailKaryawan detailKaryawan) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Tbl_DetailKaryawan> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tbl_DetailKaryawan findOne(String nama) {
		// TODO Auto-generated method stub
		return null;
	}

}
