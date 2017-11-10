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

import dao.KlaimKaryawanDao;
import dao.OtherDao;
import entity.Tbl_Klaim;
import entity.Tbl_Other;
import entity.Tbl_Project;

@Repository
public class KlaimKaryawanDaoImpl implements KlaimKaryawanDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	private OtherDao otherDao;

	@Override
	public void save(Tbl_Klaim klaimKaryawan) {
		String query = "INSERT INTO karyawan_klaim "
				+ " (kode_klaim, transport, parkir, kesehatan, bpjs, reward_monthly, reward_triwulan, taxi, entertain_internal, entertain_external, other)"
				+ " VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, klaimKaryawan.getKodeKlaim());
			ps.setDouble(2, klaimKaryawan.getTransport());
			ps.setDouble(3, klaimKaryawan.getParkir());
			ps.setDouble(4, klaimKaryawan.getKesehatan());
			ps.setDouble(5, klaimKaryawan.getBpjs());
			ps.setDouble(6, klaimKaryawan.getRewardMonthly());
			ps.setDouble(7, klaimKaryawan.getRewardTriwulan());
			ps.setDouble(8, klaimKaryawan.getTaksi());
			ps.setDouble(9, klaimKaryawan.getEntetainInternal());
			ps.setDouble(10, klaimKaryawan.getEntertainEksternal());
			ps.setString(11, klaimKaryawan.getTbl_Other().getKodeOther());

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
	public void update(Tbl_Klaim klaimKaryawan) {
	}

	@Override
	public void delete(String klaimrKaryawan) {

	}

	@Override
	public List<Tbl_Klaim> findAll() {
		String query = "SELECT kode_klaim, transport, parkir, kesehatan, bpjs, reward_monthly, reward_triwulan, taxi, entertain_internal, entertain_external, other"
				+ " FROM karyawan_klaim";
		List<Tbl_Klaim> listKota = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_Klaim mstKlaim = new Tbl_Klaim();
				mstKlaim.setTransport(rs.getDouble("transport"));
				mstKlaim.setParkir(rs.getDouble("parkir"));
				mstKlaim.setKesehatan(rs.getDouble("kesehatan"));
				mstKlaim.setBpjs(rs.getDouble("bpjs"));
				mstKlaim.setRewardMonthly(rs.getDouble("reward_monthly"));
				mstKlaim.setRewardTriwulan(rs.getDouble("reward_triwulan"));
				mstKlaim.setTaksi(rs.getDouble("taxi"));
				mstKlaim.setEntetainInternal(rs.getDouble("entertain_internal"));
				mstKlaim.setEntetainInternal(rs.getDouble("entertain_external"));
				Tbl_Other other = otherDao.findOne(rs.getString("other"));
				mstKlaim.setTbl_Other(other);
				listKota.add(mstKlaim);
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
		return listKota;
	}

	@Override
	public Tbl_Klaim findOne(String nama) {
		String query = "SELECT kode_klaim, transport, parkir, kesehatan, bpjs, reward_monthly, reward_triwulan, taxi, entertain_internal, entertain_external, other"
				+ " FROM karyawan_klaim ";
		Tbl_Klaim mstKlaim = new Tbl_Klaim();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				mstKlaim.setTransport(rs.getDouble("transport"));
				mstKlaim.setParkir(rs.getDouble("parkir"));
				mstKlaim.setKesehatan(rs.getDouble("kesehatan"));
				mstKlaim.setKesehatan(rs.getDouble("bpjs"));
				mstKlaim.setRewardMonthly(rs.getDouble("reward_monthly"));
				mstKlaim.setRewardTriwulan(rs.getDouble("reward_triwulan"));
				mstKlaim.setTaksi(rs.getDouble("taxi"));
				mstKlaim.setEntetainInternal(rs.getDouble("entertain_internal"));
				mstKlaim.setEntetainInternal(rs.getDouble("entertain_eksternal"));
				Tbl_Other other = otherDao.findOne(rs.getString("other"));
				mstKlaim.setTbl_Other(other);
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
		return mstKlaim;
	}

}
