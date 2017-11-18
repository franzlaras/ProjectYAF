package Tes;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.MstKaryawanSvc;
import entity.MstKaryawan;


public class TestOther {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		MstKaryawanSvc mstKaryawandao = ctx.getBean(MstKaryawanSvc.class);
		List<MstKaryawan> mst = mstKaryawandao.findName("September");
		for (MstKaryawan tbl_Other : mst) {
			System.out.println(""+ tbl_Other.getNamaKaryawan());
		}
		
//		Tbl_Other b = new Tbl_Other();
//		b.setKodeOther("001");
//		b.setDeskripsi("Pijat");
//		b.setJumlah(20000.0);
//		mstKaryawandao.save(b);
	}

}
