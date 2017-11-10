package dao;

import java.util.List;

import entity.Tbl_Other;

public interface OtherDao { 
	public void save(Tbl_Other tbl_Other);
	public void update(Tbl_Other tbl_Other);
	public void delete (String tbl_Other);
	public List<Tbl_Other> findAll();
	public Tbl_Other findOne(String kode);
}
