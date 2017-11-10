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

import dao.OtherDao;
import entity.Tbl_Klaim;
import entity.Tbl_Other;

@Repository
public class OtherDaoImpl implements OtherDao{

	@Autowired
	DataSource dataSource;
	
	@Override
	public void save(Tbl_Other tbl_Other) {
		String query = "INSERT INTO karyawan_other( kode_other, desc_other, value_other) VALUES (?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, tbl_Other.getKodeOther());
			ps.setString(2, tbl_Other.getDeskripsi());
			ps.setDouble(3, tbl_Other.getJumlah());

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
	public void update(Tbl_Other tbl_Other) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tbl_Other tbl_Other) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Tbl_Other> findAll() {
		String query = "SELECT kode_other, desc_other, value_other FROM karyawan_other";
		List<Tbl_Other> listOther = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tbl_Other MstOther = new Tbl_Other();
				MstOther.setKodeOther(rs.getString("kode_Other"));
				MstOther.setDeskripsi(rs.getString("desc_other"));
				MstOther.setJumlah(rs.getDouble("value_other"));
				listOther.add(MstOther);
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
		return listOther;

	}

	@Override
	public Tbl_Other findOne(String nama) {
		// TODO Auto-generated method stub
		return null;
	}

}
