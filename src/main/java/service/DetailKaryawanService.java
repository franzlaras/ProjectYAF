package service;

import java.util.List;

import entity.Tbl_DetailKaryawan;

public interface DetailKaryawanService {
	public void save(Tbl_DetailKaryawan detailKaryawan);
	public void update(Tbl_DetailKaryawan detailKaryawan);
	public void delete(String kodeDetail);
	public List<Tbl_DetailKaryawan> findAll();
	public Tbl_DetailKaryawan findOne(String kodeDetail);
}
