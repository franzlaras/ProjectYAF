package Tes;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.OtherDao;
import entity.Tbl_Other;

public class TestOther {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		OtherDao mstKaryawandao = ctx.getBean(OtherDao.class);
		List<Tbl_Other> mst = mstKaryawandao.findAll();
		for (Tbl_Other tbl_Other : mst) {
			System.out.println(""+ tbl_Other.getDeskripsi());
		}
		
//		Tbl_Other b = new Tbl_Other();
//		b.setKodeOther("001");
//		b.setDeskripsi("Pijat");
//		b.setJumlah(20000.0);
//		mstKaryawandao.save(b);

	}

}
