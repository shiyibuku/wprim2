package com.ninemax.jfinalIndex.routes;

import com.jfinal.config.Routes;
import com.ninemax.controller.ArticleController;
import com.ninemax.controller.EmailController;
import com.ninemax.controller.JournalController;
import com.ninemax.controller.UserController;

public class WxRoutes extends Routes {

	@Override
	public void config() {
		//配置访问Controller访问路径
		add("/admin/user",UserController.class);
		add("/admin/email",EmailController.class);
		add("/admin/journal",JournalController.class);
		add("/admin/article",ArticleController.class);
	}

}
