package dao;

import java.util.List;

import entity.Tbl_Klaim;

public interface KlaimKaryawanDao {
	public void save(Tbl_Klaim klaimKaryawan);
	public void update(Tbl_Klaim klaimKaryawan);
	public void delete (Tbl_Klaim klaimrKaryawan);
	public List<Tbl_Klaim> findAll();
	public Tbl_Klaim findOne(String nama);
}
