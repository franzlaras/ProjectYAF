package entity;

public class Tbl_Project {
	private String kodeProject;
	private String namaProject;
	private Tbl_Keterangan tbl_Keterangan;

	public String getKodeProject() {
		return kodeProject;
	}
	public void setKodeProject(String kodeProject) {
		this.kodeProject = kodeProject;
	}
	public String getNamaProject() {
		return namaProject;
	}
	public void setNamaProject(String namaProject) {
		this.namaProject = namaProject;
	}
	public Tbl_Keterangan getTbl_Keterangan() {
		return tbl_Keterangan;
	}
	public void setTbl_Keterangan(Tbl_Keterangan tbl_Keterangan) {
		this.tbl_Keterangan = tbl_Keterangan;
	}
}
