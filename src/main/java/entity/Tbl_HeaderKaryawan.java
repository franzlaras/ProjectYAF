package entity;

import java.sql.Date;

public class Tbl_HeaderKaryawan {
	private int no;
	private String nama;
	private String jenkel;
	private String cabang;
	private Date tanggalMasuk;
	private String nik;
	private String noAbsen;
	private String noRek;
	
	public Tbl_HeaderKaryawan() {
		// TODO Auto-generated constructor stub
	}
	
	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getJenkel() {
		return jenkel;
	}
	public void setJenkel(String jenkel) {
		this.jenkel = jenkel;
	}
	public String getCabang() {
		return cabang;
	}
	public void setCabang(String cabang) {
		this.cabang = cabang;
	}
	public Date getTanggalMasuk() {
		return tanggalMasuk;
	}
	public void setTanggalMasuk(Date tanggalMasuk) {
		this.tanggalMasuk = tanggalMasuk;
	}
	public String getNik() {
		return nik;
	}
	public void setNik(String nik) {
		this.nik = nik;
	}
	public String getNoAbsen() {
		return noAbsen;
	}
	public void setNoAbsen(String noAbsen) {
		this.noAbsen = noAbsen;
	}
	public String getNoRek() {
		return noRek;
	}
	public void setNoRek(String noRek) {
		this.noRek = noRek;
	}
	
	
	
	
	
	
	
	
}
