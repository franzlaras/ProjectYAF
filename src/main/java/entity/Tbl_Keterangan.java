package entity;

public class Tbl_Keterangan {
	private String kodeKeterangan;
	private String kantor;
	private int transport;
	private int cuti;
	private int sakit;
	private int terlambat;
	private double reward;
	
	public Tbl_Keterangan() {
		// TODO Auto-generated constructor stub
	}

	public String getKodeKeterangan() {
		return kodeKeterangan;
	}

	public String getKantor() {
		return kantor;
	}

	public void setKantor(String kantor) {
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

	public double getReward() {
		return reward;
	}

	public void setReward(double reward) {
		this.reward = reward;
	}

	public void setKodeKeterangan(String kodeKeterangan) {
		this.kodeKeterangan = kodeKeterangan;
	}

	
}
