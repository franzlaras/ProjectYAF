package service;

import java.util.List;

import entity.Tbl_Klaim;

public interface KlaimKaryawanService {

	public void save(Tbl_Klaim klaimKaryawan);
	public void update(Tbl_Klaim klaimKaryawan);
	public void delete(String kodeKlaimKaryawan);
	public List<Tbl_Klaim> findAll();
	public Tbl_Klaim findOne(String kodeKlaim);
}
