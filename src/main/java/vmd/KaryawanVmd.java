package vmd;

import java.util.ArrayList;
import java.util.List;

import org.zkoss.bind.annotation.Init;
import org.zkoss.zk.ui.select.annotation.VariableResolver;
import org.zkoss.zk.ui.select.annotation.WireVariable;

import entity.Tbl_HeaderKaryawan;
import service.HeaderKaryawanService;


@VariableResolver(org.zkoss.zkplus.spring.DelegatingVariableResolver.class)
public class KaryawanVmd {
	
	@WireVariable
	private HeaderKaryawanService headerKaryawanService;
	private Tbl_HeaderKaryawan headerKaryawan;
	private List<Tbl_HeaderKaryawan> listKaryawan = new ArrayList<>();
	private String search;
	public HeaderKaryawanService getHeaderKaryawanService() {
		return headerKaryawanService;
	}
	public void setHeaderKaryawanService(HeaderKaryawanService headerKaryawanService) {
		this.headerKaryawanService = headerKaryawanService;
	}
	public Tbl_HeaderKaryawan getHeaderKaryawan() {
		return headerKaryawan;
	}
	public void setHeaderKaryawan(Tbl_HeaderKaryawan headerKaryawan) {
		this.headerKaryawan = headerKaryawan;
	}
	public List<Tbl_HeaderKaryawan> getListKaryawan() {
		return listKaryawan;
	}
	public void setListKaryawan(List<Tbl_HeaderKaryawan> listKaryawan) {
		this.listKaryawan = listKaryawan;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	@Init
	public void load() {
		listKaryawan = headerKaryawanService.findAll();
	}

}
