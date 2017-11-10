package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.ProjectDao;
import entity.Tbl_Project;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	DataSource dataSource;
	
	@Override
	public void save(Tbl_Project project) {
		String query = "INSERT INTO karyawan_projects(kode_project, nama_project) VALUES (?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, project.getKodeProject());
			ps.setString(2, project.getNamaProject());

			int out = ps.executeUpdate();
			if (out != 0) {
				System.out.println("Sukses");
			} else {
				System.out.println("Failed");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void update(Tbl_Project project) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String project) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Tbl_Project> findAll() {
		String query = "SELECT kode_project, nama_project FROM karyawan_projects";
		List<Tbl_Project> listProject = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_Project MstProject = new Tbl_Project();
				MstProject.setKodeProject(rs.getString("kode_project"));
				MstProject.setNamaProject(rs.getString("nama_project"));
				listProject.add(MstProject);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listProject;

	}

	@Override
	public Tbl_Project findOne(String kodeProject) {
		String query = "SELECT kode_project,nama_project FROM karyawan_projects where kode_project = '"+"'";
		Tbl_Project mstProject = new Tbl_Project();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				mstProject.setKodeProject(rs.getString("kode_project"));
				mstProject.setNamaProject(rs.getString("nama_Project"));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return mstProject;

	}

}
