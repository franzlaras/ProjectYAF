package entity;

public class Tbl_Klaim {
	private String kodeKlaim;
	private double transport;
	private double parkir;
	private double kesehatan;
	private double bpjs;
	private double rewardMonthly;
	private double rewardTriwulan;
	private double taksi;
	private double entetainInternal;
	private double entertainEksternal;
	private Tbl_Other Tbl_Other;
	
	public Tbl_Klaim() {
		// TODO Auto-generated constructor stub
	}

	public String getKodeKlaim() {
		return kodeKlaim;
	}

	public void setKodeKlaim(String kodeKlaim) {
		this.kodeKlaim = kodeKlaim;
	}

	public double getTransport() {
		return transport;
	}

	public void setTransport(double transport) {
		this.transport = transport;
	}

	public double getParkir() {
		return parkir;
	}

	public void setParkir(double parkir) {
		this.parkir = parkir;
	}

	public double getKesehatan() {
		return kesehatan;
	}

	public void setKesehatan(double kesehatan) {
		this.kesehatan = kesehatan;
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

	public double getTaksi() {
		return taksi;
	}

	public void setTaksi(double taksi) {
		this.taksi = taksi;
	}

	public double getEntetainInternal() {
		return entetainInternal;
	}

	public void setEntetainInternal(double entetainInternal) {
		this.entetainInternal = entetainInternal;
	}

	public double getEntertainEksternal() {
		return entertainEksternal;
	}

	public void setEntertainEksternal(double entertainEksternal) {
		this.entertainEksternal = entertainEksternal;
	}

	public Tbl_Other getTbl_Other() {
		return Tbl_Other;
	}

	public void setTbl_Other(Tbl_Other tbl_Other) {
		Tbl_Other = tbl_Other;
	}
	
	

		
	
}
