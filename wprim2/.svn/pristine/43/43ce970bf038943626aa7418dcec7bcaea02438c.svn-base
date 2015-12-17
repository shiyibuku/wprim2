package com.ninemax.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Record;

public class HomeInterceptor implements Interceptor{

	@Override
	public void intercept(ActionInvocation ai) {
		String actionKey = ai.getActionKey();
		Controller controller = ai.getController();
		if(actionKey != null && actionKey.equals("/admin/journal/findAll") && (Record)controller.getSessionAttr("curr_user") == null){
			controller.setSessionAttr("requestUrl", actionKey);
			controller.render("/index.jsp");
		}else{
			ai.invoke();
		}
	}

}
