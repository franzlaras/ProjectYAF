package service;

import java.util.List;

import entity.Tbl_HeaderKaryawan;

public interface HeaderKaryawanService {

	public void save(Tbl_HeaderKaryawan headerKaryawan);
	public void update(Tbl_HeaderKaryawan headerKaryawan);
	public void delete(String kodeHeader);
	public List<Tbl_HeaderKaryawan> findAll();
	public Tbl_HeaderKaryawan findOne(String kodeHeader);
}
