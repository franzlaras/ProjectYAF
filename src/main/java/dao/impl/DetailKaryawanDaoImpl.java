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

import dao.DetailKaryawanDao;
import dao.HeaderKaryawanDao;
import dao.KlaimKaryawanDao;
import dao.ProjectDao;
import entity.Tbl_DetailKaryawan;
import entity.Tbl_HeaderKaryawan;
import entity.Tbl_Klaim;
import entity.Tbl_Project;

@Repository
public class DetailKaryawanDaoImpl implements DetailKaryawanDao {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private HeaderKaryawanDao headerKaryawanDao;
	private Tbl_HeaderKaryawan tbl_headerKaryawan;
	private String headers;
	
	@Autowired
	private  ProjectDao projectDao;
	private Tbl_Project tbl_Project;
	private String project;
	
	@Autowired
	private KlaimKaryawanDao klaimKaryawanDao;
	private Tbl_Klaim tbl_Klaim;
	private String klaim;
	
	
	@Override
	public void save(Tbl_DetailKaryawan detailKaryawan) {
		String query = "insert into karyawan_detail "
				+ "(nama_karyawan,project,kantor,transport,cuti,sakit,terlambat,reward,lembur,tipe_klaim,jumlah,no_rek,periode_detail,total)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, detailKaryawan.getHeaderKaryawan().getNama());
			ps.setString(2, detailKaryawan.getProject().getKodeProject());
			ps.setInt(3, detailKaryawan.getKantor());
			ps.setInt(4, detailKaryawan.getTransport());
			ps.setInt(5, detailKaryawan.getCuti());
			ps.setInt(6, detailKaryawan.getSakit());
			ps.setInt(7, detailKaryawan.getTerlambat());
			ps.setDouble(8, detailKaryawan.getReward());
			ps.setString(9, detailKaryawan.getKlaim().getKodeKlaim());
			ps.setDouble(10, detailKaryawan.getJumlah());
			ps.setString(11, detailKaryawan.getNo_rek());
			ps.setString(12, detailKaryawan.getPeriode());
			
			
			int out = ps.executeUpdate();
			if (out != 0) {
				System.out.println("sukses");
			} else {
				System.out.println("failed");
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

	}

	@Override
	public void update(Tbl_DetailKaryawan detailKaryawan) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String detailKaryawan) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Tbl_DetailKaryawan> findAll() {
		String query = "select nama_karyawan,project,kantor,transport,cuti,sakit,terlambat,reward,lembur,tipe_klaim,jumlah,no_rek,periode_detail,total from karyawan_detail";
		List<Tbl_DetailKaryawan> listDetail= new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_HeaderKaryawan header = new Tbl_HeaderKaryawan();
				Tbl_DetailKaryawan detail = new Tbl_DetailKaryawan();
				Tbl_Project project2=new Tbl_Project();
				Tbl_Klaim klaim2 = new Tbl_Klaim();
				
				headers = rs.getString("nama_karyawan");
				tbl_headerKaryawan = headerKaryawanDao.findOne(headers);
				detail.setHeaderKaryawan(tbl_headerKaryawan);
				
				project = rs.getString("project");
				tbl_Project = projectDao.findOne(project);
				detail.setProject(tbl_Project);
				
				detail.setKantor(rs.getInt("kantor"));
				detail.setTransport(rs.getInt("transport"));
				detail.setCuti(rs.getInt("cuti"));
				detail.setSakit(rs.getInt("sakit"));
				detail.setTerlambat(rs.getInt("terlambat"));
				detail.setReward(rs.getDouble("reward"));
				detail.setLembur(rs.getInt("lembur"));
				
				klaim = rs.getString("tipe_klaim");
				tbl_Klaim = klaimKaryawanDao.findOne(klaim);
				detail.setKlaim(tbl_Klaim);
				
				detail.setJumlah(rs.getDouble("jumlah"));
				detail.setNo_rek(rs.getString("no_rek"));
				detail.setPeriode(rs.getString("periode_detail"));
				
			
				listDetail.add(detail);
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
		return listDetail;
	}

	@Override
	public Tbl_DetailKaryawan findOne(String nama) {
		String query = "select nama_karyawan,project,kantor,transport,cuti,sakit,terlambat,reward,lembur,tipe_klaim,jumlah,no_rek,periode_detail,total from karyawan_detail where nama_karyawan = '"+nama+"'";
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Tbl_DetailKaryawan detail = new Tbl_DetailKaryawan();
		
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				//Tbl_HeaderKaryawan header = new Tbl_HeaderKaryawan();
				//Tbl_Project project=new Tbl_Project();
				//Tbl_Klaim klaim = new Tbl_Klaim();
				
				headers = rs.getString("nama_karyawan");
				tbl_headerKaryawan = headerKaryawanDao.findOne(headers);
				detail.setHeaderKaryawan(tbl_headerKaryawan);
				
				project = rs.getString("project");
				tbl_Project = projectDao.findOne(project);
				detail.setProject(tbl_Project);
				detail.setKantor(rs.getInt("kantor"));
				detail.setTransport(rs.getInt("transport"));
				detail.setCuti(rs.getInt("cuti"));
				detail.setSakit(rs.getInt("sakit"));
				detail.setTerlambat(rs.getInt("terlambat"));
				detail.setReward(rs.getDouble("reward"));
				detail.setLembur(rs.getInt("lembur"));
				klaim = rs.getString("tipe_klaim");
				tbl_Klaim = klaimKaryawanDao.findOne(klaim);
				detail.setKlaim(tbl_Klaim);
				
				detail.setJumlah(rs.getDouble("jumlah"));
				detail.setNo_rek(rs.getString("no_rek"));
				detail.setPeriode(rs.getString("periode_detail"));
				
			
		
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
		return detail;
	}

}
