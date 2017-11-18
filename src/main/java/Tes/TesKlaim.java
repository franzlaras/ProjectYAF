package Tes;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;






import service.MstKaryawanSvc;
import service.MstProjectSvc;
import dao.MstKaryawanDao;
import dao.MstProjectDao;
import entity.MstKaryawan;
import entity.MstProject;


public class TesKlaim {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		MstProjectSvc mstProjectDao = ctx.getBean(MstProjectSvc.class);
		MstKaryawanSvc mstKaryawanDao = ctx.getBean(MstKaryawanSvc.class);
//		DetailKaryawanDao detailKaryawanDao = ctx.getBean(DetailKaryawanDao.class);
//		Tbl_Other to = new Tbl_Other();
//		Tbl_DetailKaryawan de = new Tbl_DetailKaryawan();
//		
//		Tbl_DetailKaryawan da = detailKaryawanDao.findOne("aji");
//		System.out.println(da.getKantor());
		
		MstProject p = new MstProject();
		
		p.setKodeProject("003");
		p.setNamaProject("Astra");
		
		mstProjectDao.save(p);
		
		MstKaryawan k = new MstKaryawan();
		
//		k.setNik("141");
//		k.setNamaKaryawan("Andi");
//		k.setPeriode("September");
//		k.setProject(p);
		
		mstKaryawanDao.save(k);
		
		

		
//		List<MstProject> list = mstProjectDao.findAll();
//		for (MstProject k : list) {
//			System.out.println(k.getNamaProject());
//		}
//		
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
