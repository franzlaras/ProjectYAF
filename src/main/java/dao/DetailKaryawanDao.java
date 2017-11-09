package dao;

import java.util.List;

import entity.Tbl_DetailKaryawan;;

public interface DetailKaryawanDao {
	public void save(Tbl_DetailKaryawan detailKaryawan);
	public void update(Tbl_DetailKaryawan detailKaryawan);
	public void delete (Tbl_DetailKaryawan detailKaryawan);
	public List<Tbl_DetailKaryawan> findAll();
	public Tbl_DetailKaryawan findOne(String nama);
}
