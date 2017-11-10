package Tes;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.KlaimKaryawanDao;
import dao.OtherDao;
import entity.Tbl_Klaim;

public class TesKlaim {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		KlaimKaryawanDao mstKaryawandao = ctx.getBean(KlaimKaryawanDao.class);
		Tbl_Klaim nu = new Tbl_Klaim();
//		nu.se
		
	}

}
