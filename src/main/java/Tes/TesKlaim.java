package Tes;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.DetailKaryawanDao;
import dao.KlaimKaryawanDao;
import dao.OtherDao;
import entity.Tbl_DetailKaryawan;
import entity.Tbl_Klaim;
import entity.Tbl_Other;

public class TesKlaim {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		KlaimKaryawanDao mstKaryawandao = ctx.getBean(KlaimKaryawanDao.class);
		DetailKaryawanDao detailKaryawanDao = ctx.getBean(DetailKaryawanDao.class);
		Tbl_Other to = new Tbl_Other();
		Tbl_DetailKaryawan de = new Tbl_DetailKaryawan();
		
		Tbl_DetailKaryawan da = detailKaryawanDao.findOne("aji");
		System.out.println(da.getKantor());

		
//		List<Tbl_DetailKaryawan> list = detailKaryawanDao.findAll();
//		for (Tbl_DetailKaryawan k : list) {
//			System.out.println(k.getNo_rek());
//		}
		
//		de.setNo_rek("202020");
//		de.setCuti(1);
//		de.setLembur(2);
		
		
//		to.setKodeOther("1");
//		to.setDeskripsi("Jumlah");
//		to.setJumlah(50000);
//
//		Tbl_Klaim nu = new Tbl_Klaim();
//		nu.setBpjs(20.0);
//		nu.setTbl_Other(to);
//		mstKaryawandao.save(nu);
		
	}

}
