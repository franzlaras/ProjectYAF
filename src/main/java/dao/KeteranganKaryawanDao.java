package dao;

import java.util.List;

import entity.Tbl_Keterangan;

public interface KeteranganKaryawanDao {
	public void save(Tbl_Keterangan keteranganKaryawan);
	public void update(Tbl_Keterangan keteranganKaryawan);
	public void delete (Tbl_Keterangan keteranganKaryawan);
	public List<Tbl_Keterangan> findAll();
	public Tbl_Keterangan findOne(String nama);
}
