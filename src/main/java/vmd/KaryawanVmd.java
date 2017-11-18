package vmd;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.w3c.dom.ls.LSInput;
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.Init;
import org.zkoss.bind.annotation.NotifyChange;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.select.annotation.VariableResolver;
import org.zkoss.zk.ui.select.annotation.WireVariable;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Include;

import entity.MstKaryawan;
import entity.MstKlaim;
import entity.MstLaporan;
import entity.MstOther;
import entity.MstProject;
import service.MstKaryawanSvc;
import service.MstKlaimSvc;
import service.MstLaporanSvc;
import service.MstProjectSvc;

@VariableResolver(org.zkoss.zkplus.spring.DelegatingVariableResolver.class)
public class KaryawanVmd {

	@WireVariable
	private MstLaporanSvc mstLaporanSvc;
	@WireVariable
	private MstKaryawanSvc mstKaryawanSvc;
	@WireVariable
	private MstProjectSvc mstProjectSvc;
	@WireVariable
	private MstKlaimSvc mstKlaimSvc;

	private List<MstLaporan> listLaporan = new ArrayList<>();
	private List<MstKaryawan> listMstKaryawan = new ArrayList<>();
	private List<MstProject> listProject = new ArrayList<>();
	
	private MstLaporan mstLaporan = new MstLaporan();
	private MstKaryawan mstKaryawan = new MstKaryawan();
	private MstProject mstProject = new MstProject();
	private MstKlaim mstKlaim = new MstKlaim();
	private MstKlaim mstKlaimI = new MstKlaim();
	
	private String periode;
	private String data;
	private String search;
	private String rek = null;
	private String pro = null;
	private String nik = null;
	private String kpro = null;
	private Date selectedDate = null;
	
	DateFormat dateFormat = new SimpleDateFormat("MM");
	
	DateFormat datesFormat = new SimpleDateFormat("yy");
	
	
	


	public MstLaporanSvc getMstLaporanSvc() {
		return mstLaporanSvc;
	}

	public void setMstLaporanSvc(MstLaporanSvc mstLaporanSvc) {
		this.mstLaporanSvc = mstLaporanSvc;
	}
	

	public MstKaryawanSvc getMstKaryawanSvc() {
		return mstKaryawanSvc;
	}

	public void setMstKaryawanSvc(MstKaryawanSvc mstKaryawanSvc) {
		this.mstKaryawanSvc = mstKaryawanSvc;
	}

	public List<MstLaporan> getListLaporan() {
		return listLaporan;
	}

	public void setListLaporan(List<MstLaporan> listLaporan) {
		this.listLaporan = listLaporan;
	}
	
	

	public List<MstKaryawan> getListMstKaryawan() {
		return listMstKaryawan;
	}

	public void setListMstKaryawan(List<MstKaryawan> listMstKaryawan) {
		this.listMstKaryawan = listMstKaryawan;
	}

	public MstLaporan getMstLaporan() {
		return mstLaporan;
	}

	public void setMstLaporan(MstLaporan mstLaporan) {
		this.mstLaporan = mstLaporan;
	}
	
	
	public MstKaryawan getMstKaryawan() {
		return mstKaryawan;
	}

	public void setMstKaryawan(MstKaryawan mstKaryawan) {
		this.mstKaryawan = mstKaryawan;
	}
	
	

	public MstProjectSvc getMstProjectSvc() {
		return mstProjectSvc;
	}

	public void setMstProjectSvc(MstProjectSvc mstProjectSvc) {
		this.mstProjectSvc = mstProjectSvc;
	}

	public MstProject getMstProject() {
		return mstProject;
	}

	public void setMstProject(MstProject mstProject) {
		this.mstProject = mstProject;
	}
	
	

	public List<MstProject> getListProject() {
		return listProject;
	}

	public void setListProject(List<MstProject> listProject) {
		this.listProject = listProject;
	}
	

	

	public MstKlaimSvc getMstKlaimSvc() {
		return mstKlaimSvc;
	}

	public void setMstKlaimSvc(MstKlaimSvc mstKlaimSvc) {
		this.mstKlaimSvc = mstKlaimSvc;
	}

	public MstKlaim getMstKlaim() {
		return mstKlaim;
	}

	public void setMstKlaim(MstKlaim mstKlaim) {
		this.mstKlaim = mstKlaim;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getPeriode() {
		return periode;
	}

	public void setPeriode(String periode) {
		this.periode = periode;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getRek() {
		return rek;
	}

	public void setRek(String rek) {
		this.rek = rek;
	}

	public String getPro() {
		return pro;
	}

	public void setPro(String pro) {
		this.pro = pro;
	}
	

	public String getNik() {
		return nik;
	}

	public void setNik(String nik) {
		this.nik = nik;
	}
	

	public Date getSelectedDate() {
		return selectedDate;
	}

	public void setSelectedDate(Date selectedDate) {
		this.selectedDate =  selectedDate;
	}

	public String getKpro() {
		return kpro;
	}

	public void setKpro(String kpro) {
		this.kpro = kpro;
	}


	public DateFormat getDatesFormat() {
		return datesFormat;
	}

	public void setDatesFormat(DateFormat datesFormat) {
		this.datesFormat = datesFormat;
	}

	public DateFormat getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(DateFormat dateFormat) {
		this.dateFormat = dateFormat;
	}

	public MstKlaim getMstKlaimI() {
		return mstKlaimI;
	}

	public void setMstKlaimI(MstKlaim mstKlaimI) {
		this.mstKlaimI = mstKlaimI;
	}

	@Init
	public void load() {
		listLaporan = mstLaporanSvc.findAll();
		//listMstKaryawan = mstKaryawanSvc.findAll();
	}

	@Command("findNama")
	@NotifyChange({ "listLaporan", "periode" })
	public void listLaporanPeriode() {
		listLaporan = mstLaporanSvc.findPeriode(periode);	
	}
	
	@Command("findNamas")
	@NotifyChange({ "listLaporan", "selectedDate" })
	public void listLaporanPeriodes() {
		
		try{
		Calendar cal = Calendar.getInstance();
		cal.setTime(selectedDate);
		int month = cal.get(Calendar.MONTH)+1;
		int year = cal.get(Calendar.YEAR);
		
		listLaporan = mstLaporanSvc.findByDate(month,year);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Command("findProject")
	@NotifyChange({"listProject","data"})
	public void listProjectData(){
		
		try{
		listProject = null;
//		
		//List<String> kod = new ArrayList<>();
		String karyawan = mstLaporan.getNik().getNik();
		
		List<MstLaporan> l = mstLaporanSvc.findAll();
		//List<MstLaporan> k = mstLaporanSvc.findNik(karyawan);
		List<MstLaporan> list = mstLaporanSvc.findNik(karyawan);
		
		for(MstLaporan lapor : list){
			//if(lapor.getKodeProject().getKodeProject().equalsIgnoreCase(karyawan)){
				pro = lapor.getKodeProject().getKodeProject();
				listProject = mstProjectSvc.findProject(lapor.getNik().getNik());
				
			//}
			
		}
		
	}catch (Exception e) {
		e.printStackTrace();
	}
//		String kode = mstLaporan.getKodeProject().getKodeProject();
//		MstProject pr = mstProjectSvc.findOne(kode);
		//pro = pr.getKodeProject();
		//mstKlaim.getKodeProject().setKodeProject(pro.getKodeProject());
		//listProject = mstProjectSvc.findProject(kode);
		
	}
	
	@Command("tampilNik")
	@NotifyChange("nik")
	public void tampilN(){
	try{
		if(mstLaporan.getNik().getNik() != null){
			String kode = mstLaporan.getNik().getNik();
			MstKaryawan kar = mstKaryawanSvc.findOne(kode);
			//mstKlaim.getNik().setNik(kar.getNik());
			nik = kar.getNik();
		}
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	}
		
	
	@Command("tampilRek")
	@NotifyChange("rek")
	public void tampilR(){
	try{
		if(nik != null){
			String kode = mstLaporan.getNik().getNik();
			MstKaryawan kar = mstKaryawanSvc.findOne(kode);
			rek = kar.getNoRek();
		}	
			
	}catch (Exception e) {
		e.printStackTrace();
	}

	}
	
	@Command("save")
	@NotifyChange("mstKlaimI")
	public void save(){
		//String nik = mstLaporan.getNik().getNik();
		
		//String kode = mstLaporan.getKodeProject().getKodeProject();
		//mstKlaim.getKodeProject().setKodeProject(kode);
			mstKaryawan.setNik(nik);
			mstProject.setKodeProject(pro);
			
			mstKlaim.setNik(mstKaryawan);
			mstKlaim.setKodeProject(mstProject);
			
			mstKlaimSvc.save(mstKlaim);
			Clients.showNotification("Data berhasil disimpan", Clients.NOTIFICATION_TYPE_INFO, null, null, 1500);
			//Executions.sendRedirect("/Data/new_file.zul");
			
	}
	
	@Command("clear")
	@NotifyChange("mstKlaimI")
	public void clear(){
		mstKlaimI = null;
		
		
	}
	
	
	
	

}
	

	
		


