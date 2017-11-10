package Tes;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.KlaimKaryawanDao;
import dao.OtherDao;
import entity.Tbl_Klaim;
import entity.Tbl_Other;

public class TesKlaim {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		KlaimKaryawanDao mstKaryawandao = ctx.getBean(KlaimKaryawanDao.class);
		Tbl_Other to = new Tbl_Other();
		to.setKodeOther("1");
		to.setDeskripsi("Jumlah");
		to.setJumlah(50000);

		Tbl_Klaim nu = new Tbl_Klaim();
		nu.setBpjs(20.0);
		nu.setTbl_Other(to);
		mstKaryawandao.save(nu);
		
	}

}
