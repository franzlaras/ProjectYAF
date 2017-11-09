package dao;

import java.util.List;

import entity.Tbl_HeaderKaryawan;

public interface HeaderKaryawanDao {
	public void save(Tbl_HeaderKaryawan headerKaryawan);
	public void update(Tbl_HeaderKaryawan headerKaryawan);
	public void delete (Tbl_HeaderKaryawan headerKaryawan);
	public List<Tbl_HeaderKaryawan> findAll();
	public Tbl_HeaderKaryawan findOne(String nama);
}
