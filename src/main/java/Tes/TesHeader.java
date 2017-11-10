package Tes;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.HeaderKaryawanService;
import dao.HeaderKaryawanDao;
import entity.Tbl_HeaderKaryawan;

public class TesHeader {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/META-INF/spring/app-config.xml");
		HeaderKaryawanService mstHeaderdao = ctx.getBean(HeaderKaryawanService.class);
		List<Tbl_HeaderKaryawan> bo = mstHeaderdao.findAll();
		for (Tbl_HeaderKaryawan tbl_HeaderKaryawan : bo) {
			System.out.println(tbl_HeaderKaryawan.getNama());
		}
		
	}

}
