package dao;

import java.util.List;

public class Tbl_Periode {
	private String kode;
	private String bulan;
	List<Tbl_HeaderKaryawan> tbl_HeaderKaryawans;
	
	public String getKode() {
		return kode;
	}
	public void setKode(String kode) {
		this.kode = kode;
	}
	public String getBulan() {
		return bulan;
	}
	public void setBulan(String bulan) {
		this.bulan = bulan;
	}
	public List<Tbl_HeaderKaryawan> getTbl_HeaderKaryawans() {
		return tbl_HeaderKaryawans;
	}
	public void setTbl_HeaderKaryawans(List<Tbl_HeaderKaryawan> tbl_HeaderKaryawans) {
		this.tbl_HeaderKaryawans = tbl_HeaderKaryawans;
	}
	
	
}
