package dao;

public class Tbl_Keterangan {
	private String kodeKeterangan;
	private int kantor;
	private double transport;
	private int cuti;
	private int sakit;
	private int terlambat;
	private double parkir;
	private double bpjs;
	private double rewardMonthly;
	private double rewardTriwulan;
	private double taxi;
	private Tbl_Other other;

	public Tbl_Keterangan() {
		// TODO Auto-generated constructor stub
	}

	public String getKodeKeterangan() {
		return kodeKeterangan;
	}

	public void setKodeKeterangan(String kodeKeterangan) {
		this.kodeKeterangan = kodeKeterangan;
	}

	public int getKantor() {
		return kantor;
	}

	public void setKantor(int kantor) {
		this.kantor = kantor;
	}

	public double getTransport() {
		return transport;
	}

	public void setTransport(double transport) {
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

	public double getParkir() {
		return parkir;
	}

	public void setParkir(double parkir) {
		this.parkir = parkir;
	}

	public double getBpjs() {
		return bpjs;
	}

	public void setBpjs(double bpjs) {
		this.bpjs = bpjs;
	}

	public double getRewardMonthly() {
		return rewardMonthly;
	}

	public void setRewardMonthly(double rewardMonthly) {
		this.rewardMonthly = rewardMonthly;
	}

	public double getRewardTriwulan() {
		return rewardTriwulan;
	}

	public void setRewardTriwulan(double rewardTriwulan) {
		this.rewardTriwulan = rewardTriwulan;
	}

	public double getTaxi() {
		return taxi;
	}

	public void setTaxi(double taxi) {
		this.taxi = taxi;
	}

	public Tbl_Other getOther() {
		return other;
	}

	public void setOther(Tbl_Other other) {
		this.other = other;
	}
}
