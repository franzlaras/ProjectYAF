package service;

import java.util.List;

import entity.Tbl_Other;

public interface OtherService {

	public void save(Tbl_Other tbl_other);
	public void update(Tbl_Other tbl_other);
	public void delete(String kodeOther);
	public List<Tbl_Other> findAll();
	public Tbl_Other findOne(String nama);
}
