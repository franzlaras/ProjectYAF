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

import entity.Tbl_Klaim;

@Repository
public class KlaimKaryawanDaoImpl implements KlaimKaryawanDao {

	@Autowired
	DataSource dataSource;
	Connection conn;
	PreparedStatement ps;

	@Override
	public void save(Tbl_Klaim klaimKaryawan) {
		String query = "INSERT INTO(kode_klaim,transport,parkir,kesehatan,bpjs,reward_monthly,reward_triwulan,taxi,entertain_internal,entertain_eksternal,other) values(?,?,?,?,?,?,?,?,?,?,?)";

		try {
			conn = dataSource.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, klaimKaryawan.getKodeKlaim());
			ps.setDouble(2, klaimKaryawan.getTransport());
			ps.setDouble(3, klaimKaryawan.getParkir());
			ps.setDouble(4, klaimKaryawan.getKesehatan());
			ps.setDouble(5, klaimKaryawan.getBpjs());
			ps.setDouble(6, klaimKaryawan.getRewardMonthly());
			ps.setDouble(7, klaimKaryawan.getRewardTriwulan());
			ps.setDouble(8, klaimKaryawan.getTaksi());
			ps.setDouble(9, klaimKaryawan.getEntetainInternal());
			ps.setDouble(3, klaimKaryawan.getEntertainEksternal());
			ps.setString(3, klaimKaryawan.getTbl_Other().getKodeOther());
			int out = ps.executeUpdate();
			if (out != 0) {
				System.out.println("sukses");
			} else {
				System.out.println("failed");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	@Override
	public void update(Tbl_Klaim klaimKaryawan) {
	}

	@Override
	public void delete(Tbl_Klaim klaimrKaryawan) {

	}

	@Override
	public List<Tbl_Klaim> findAll() {
		String query = "select kode_klaim,transport,parkir,kesehatan,bpjs,reward_monthly,reward_triwulan,taxi,entertain_internal,entertain_eksternal from karyawan_klaim ";
		List<Tbl_Klaim> listKlaim = new ArrayList<>();
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_Klaim klaim= new Tbl_Klaim();
				klaim.setKodeKlaim(rs.getString("kode_klaim"));
				klaim.setTransport(rs.getDouble("transport"));
				klaim.setParkir(rs.getDouble("parkir"));
				klaim.setKesehatan(rs.getDouble("kesehatan"));
				klaim.setBpjs(rs.getDouble("bpjs"));
				klaim.setRewardMonthly(rs.getDouble("reward_monthly"));
				klaim.setRewardTriwulan(rs.getDouble("reward_triwulan"));
				klaim.setTaksi(rs.getDouble("taxi"));
				klaim.setEntetainInternal(rs.getDouble("entertain_internal"));
				klaim.setEntertainEksternal(rs.getDouble("entertain_eksternal"));
				
							}
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			}

		}
		return listKlaim;

	}

	@Override
	public Tbl_Klaim findOne(String nama) {
		// TODO Auto-generated method stub
		return null;
	}

}
