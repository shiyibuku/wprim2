package com.ninemax.jfinalIndex.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.AnsiSqlDialect;
import com.jfinal.plugin.activerecord.tx.TxByActionMethods;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.ninemax.jfinalIndex.routes.WxRoutes;
import com.ninemax.model.Article;
import com.ninemax.model.Journal;
import com.ninemax.model.JournalVolume;
import com.ninemax.model.User;

public class JFinalIndexConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants constant) {

		constant.setDevMode(true);
		constant.setViewType(ViewType.JSP);
		//constant.setUploadedFileSaveDirectory(PathKit.getWebRootPath());
	}

	@Override
	public void configHandler(Handlers arg0) {

	}

	@Override
	public void configInterceptor(Interceptors inter) {
		//配置拦截器
		inter.add(new TxByActionMethods("save","update","delete"));
	}

	@Override
	public void configPlugin(Plugins plugins) {
		//配置数据源
		C3p0Plugin c3p0 = new C3p0Plugin(loadPropertyFile("c3p0.properties"));
		plugins.add(c3p0);
		//DB+Record
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0);
		plugins.add(arp);
		//设置方言
		arp.setDialect(new AnsiSqlDialect());
		//配置属性名大小写不敏感
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
		
		arp.addMapping("Wprim_User","UserId", User.class);
		arp.addMapping("WSSJOURNAL","JournalId", Journal.class);
		arp.addMapping("WSSJOURNALVOLUME","VolumeID",JournalVolume.class);
		arp.addMapping("WSSARTICLE","WPRIMID",Article.class);
	}

	@Override
	public void configRoute(Routes routes) {
		routes.add(new WxRoutes());
	}

	
}
