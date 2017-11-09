package vmd;

import org.zkoss.bind.annotation.Command;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.select.annotation.VariableResolver;
import org.zkoss.zk.ui.util.Clients;

@VariableResolver(org.zkoss.zkplus.spring.DelegatingVariableResolver.class)
public class DpVmd {
	
	@Command("save")
	public void save(){
		//MstCustomer mstCustomerfindone = new MstCustomer();
		//mstCustomerfindone = mstCustomerSvc.findOne(mstCustomer.getKodeCustomer());
		
//		if(mstCustomerfindone.getKodeCustomer() == null){
//			mstCustomerSvc.save(mstCustomer);
			Clients.showNotification("Data berhasil disimpan", Clients.NOTIFICATION_TYPE_INFO, null, null, 1500);
			Executions.sendRedirect("/Data/dataproject.zul");
//		}else if(mstCustomerfindone.getKodeCustomer() != null){
//			mstCustomerSvc.update(mstCustomer);
//			Clients.showNotification("Data berhasil diupdate", Clients.NOTIFICATION_TYPE_INFO, null, null, 1500);
////			Include inc =(Include)Executions.getCurrent().getDesktop().getPage("index").getFellow("mainInclude");
////			inc.setSrc("/master/customer/customeredit.zul");
//			Executions.sendRedirect("/index.zul");
//		}
	}
}
