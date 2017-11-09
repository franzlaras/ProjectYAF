package entity;

public class Tbl_DetailKaryawan {
	private int no;
	private double lembur;
	private double jumlah;
	private Tbl_HeaderKaryawan HeaderKaryawan;
	private Tbl_Project Project;
	private Tbl_Klaim Klaim;
	
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
