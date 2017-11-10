package dao;

import java.util.List;

import entity.Tbl_DetailKaryawan;
import entity.Tbl_Project;

public interface ProjectDao {
	public void save(Tbl_Project project);
	public void update(Tbl_Project project);
	public void delete(String project);
	public List<Tbl_Project> findAll();
	public Tbl_Project findOne(String kodeProject);
}
