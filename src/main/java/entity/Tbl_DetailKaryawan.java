package entity;

public class Tbl_DetailKaryawan {
	private int no;
	private double lembur;
	private double jumlah;
	private double periode;
	private int kantor;
	private int transport;
	private int cuti;
	private int sakit;
	private int terlambat;
	private int reward;
	private int no_rek;
	private Tbl_HeaderKaryawan HeaderKaryawan;
	private Tbl_Project Project;
	private Tbl_Klaim Klaim;
	
	public Tbl_DetailKaryawan() {
		// TODO Auto-generated constructor stub
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public double getLembur() {
		return lembur;
	}
	public void setLembur(double lembur) {
		this.lembur = lembur;
	}
	public double getJumlah() {
		return jumlah;
	}
	public void setJumlah(double jumlah) {
		this.jumlah = jumlah;
	}
	public double getPeriode() {
		return periode;
	}
	public void setPeriode(double periode) {
		this.periode = periode;
	}
	public int getKantor() {
		return kantor;
	}
	public void setKantor(int kantor) {
		this.kantor = kantor;
	}
	public int getTransport() {
		return transport;
	}
	public void setTransport(int transport) {
		this.transport = transport;
	}
	public int getCuti() {
		return cuti;
	}
	public void setCuti(int cuti) {
		this.cuti = cuti;
	}
	public int getSakit() {
		return sakit;
	}
	public void setSakit(int sakit) {
		this.sakit = sakit;
	}
	public int getTerlambat() {
		return terlambat;
	}
	public void setTerlambat(int terlambat) {
		this.terlambat = terlambat;
	}
	public int getReward() {
		return reward;
	}
	public void setReward(int reward) {
		this.reward = reward;
	}
	public Tbl_HeaderKaryawan getHeaderKaryawan() {
		return HeaderKaryawan;
	}
	public void setHeaderKaryawan(Tbl_HeaderKaryawan headerKaryawan) {
		HeaderKaryawan = headerKaryawan;
	}
	public Tbl_Project getProject() {
		return Project;
	}
	public void setProject(Tbl_Project project) {
		Project = project;
	}
	public Tbl_Klaim getKlaim() {
		return Klaim;
	}
	public void setKlaim(Tbl_Klaim klaim) {
		Klaim = klaim;
	}
	public int getNo_rek() {
		return no_rek;
	}
	public void setNo_rek(int no_rek) {
		this.no_rek = no_rek;
	}
	
	
	
	}
