package dao.impl;

import java.sql.Connection;
import java.sql.Date;
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
import entity.Tbl_DetailKaryawan;
import entity.Tbl_HeaderKaryawan;


@Repository
public class HeaderKaryawanDaoImpl implements HeaderKaryawanDao {

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private DetailKaryawanDao detailKaryawanDao;
	private Tbl_DetailKaryawan tbl_DetailKaryawan;
	private String periode;
	
	@Override
	public void save(Tbl_HeaderKaryawan headerKaryawan) {
		// TODO Auto-generated method stub
		String query = "insert into karyawan_headers "
				+ "(nama,jenis_kelamin,cabang,tanggal_masuk,nik,no_absen,no_rekening,periode_header)"
				+ "values(?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, headerKaryawan.getNama());
			ps.setString(2, headerKaryawan.getJenkel());
			ps.setString(3, headerKaryawan.getCabang());
			ps.setDate(4, headerKaryawan.getTanggalMasuk());
			ps.setString(5, headerKaryawan.getNik());
			ps.setString(6, headerKaryawan.getNoAbsen());
			ps.setString(7, headerKaryawan.getNoRek());
			ps.setString(8, headerKaryawan.getDetailKaryawan().getPeriode());
			
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
	public void update(Tbl_HeaderKaryawan headerKaryawan) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String headerKaryawan) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Tbl_HeaderKaryawan> findAll() {
		String query = "select * from karyawan_headers";
		List<Tbl_HeaderKaryawan> listHeader = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_HeaderKaryawan Header = new Tbl_HeaderKaryawan();
				Tbl_DetailKaryawan detail = new Tbl_DetailKaryawan();
				Header.setNama(rs.getString("nama"));
				Header.setJenkel(rs.getString("jenis_kelamin"));
				Header.setCabang(rs.getString("cabang"));
				Header.setTanggalMasuk(rs.getDate("tanggal_masuk"));
				Header.setNik(rs.getString("nik"));
				Header.setNoAbsen(rs.getString("no_absen"));
				Header.setNoRek(rs.getString("no_rekening"));
				
				periode = rs.getString("periode_header");
				tbl_DetailKaryawan = detailKaryawanDao.findOne(periode);
				Header.setDetailKaryawan(tbl_DetailKaryawan);
			
				listHeader.add(Header);
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
		return listHeader;
		
	}

	@Override
	public Tbl_HeaderKaryawan findOne(String periode) {
		String query = "select * from karyawan_headers where periode= '"
				+ periode + "'";
		Tbl_HeaderKaryawan Header = new Tbl_HeaderKaryawan();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {				
				Header.setNama(rs.getString("nama"));
				Header.setJenkel(rs.getString("jenis_kelamin"));
				Header.setCabang(rs.getString("cabang"));
				Header.setTanggalMasuk(rs.getDate("tanggal_masuk"));
				Header.setNik(rs.getString("nik"));
				Header.setNoAbsen(rs.getString("no_absen"));
				Header.setNoRek(rs.getString("no_rekening"));
				
				periode = rs.getString("periode_header");
				tbl_DetailKaryawan = detailKaryawanDao.findOne(periode);
				Header.setDetailKaryawan(tbl_DetailKaryawan);
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
		return Header;
		
	}

}
