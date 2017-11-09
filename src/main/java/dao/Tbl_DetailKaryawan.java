package dao;

public class Tbl_DetailKaryawan {
	private int no;
	private Tbl_Project Project;
	private Tbl_Keterangan Keterangan;
	private double lembur;
	private Tbl_Klaim Klaim;
	private double jumlah;
	private Tbl_HeaderKaryawan HeaderKaryawan;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Tbl_Project getProject() {
		return Project;
	}
	public void setProject(Tbl_Project project) {
		Project = project;
	}
	public Tbl_Keterangan getKeterangan() {
		return Keterangan;
	}
	public void setKeterangan(Tbl_Keterangan keterangan) {
		Keterangan = keterangan;
	}
	public double getLembur() {
		return lembur;
	}
	public void setLembur(double lembur) {
		this.lembur = lembur;
	}
	public Tbl_Klaim getKlaim() {
		return Klaim;
	}
	public void setKlaim(Tbl_Klaim klaim) {
		Klaim = klaim;
	}
	public double getJumlah() {
		return jumlah;
	}
	public void setJumlah(double jumlah) {
		this.jumlah = jumlah;
	}
	public Tbl_HeaderKaryawan getHeaderKaryawan() {
		return HeaderKaryawan;
	}
	public void setHeaderKaryawan(Tbl_HeaderKaryawan headerKaryawan) {
		HeaderKaryawan = headerKaryawan;
	}
	
	
}
