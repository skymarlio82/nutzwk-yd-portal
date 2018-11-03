package cn.wizzer.app.web.commons.processor;

import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.app.cms.modules.services.impl.CmsChannelServiceImpl;
import cn.wizzer.app.web.commons.base.Globals;
import cn.wizzer.framework.util.DateUtil;
import cn.wizzer.framework.util.ShiroUtil;
import cn.wizzer.framework.util.StringUtil;
import org.nutz.dao.Cnd;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Record;
import org.nutz.dao.impl.sql.NutSql;
import org.nutz.dao.sql.SqlCallback;
import org.nutz.lang.Strings;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.impl.processor.AbstractProcessor;

import java.util.List;

/**
 * Created by wizzer on 2016/6/22.
 */
public class GlobalsSettingProcessor extends AbstractProcessor {

	@SuppressWarnings("rawtypes")
	public void process(ActionContext ac) throws Throwable {

		Object obj = ac.getRequest().getSession().getAttribute("channels");
		//List<Cms_channel> channels;
		List<Record> channels;
		if(obj == null) {
			CmsChannelService cmsChannelService = (CmsChannelService) Mvcs.ctx().getDefaultIoc().get(CmsChannelServiceImpl.class);
			channels = cmsChannelService.list(new NutSql("SELECT * FROM cms_channel  WHERE (parentId='' OR parentId IS NULL ) AND  name NOT LIKE '手机%'  ORDER BY location ASC, path ASC "));

			//Sqls.callback.map();
//			SqlCallback callback = null ;
//			Sqls.create().setCallback(callback);

//			channels = cmsChannelService.query(Cnd.where("parentId", "=", "").
//					or("parentId", "is", null).asc("location")
//					.asc("path"));
		}else{
			channels = (List<Record>)obj;
		}
		ac.getRequest().getSession().setAttribute("channels",channels);
		ac.getRequest().setAttribute("AppRoot", Globals.AppRoot);
		ac.getRequest().setAttribute("AppBase", Globals.AppBase);
		ac.getRequest().setAttribute("AppName", Globals.AppName);
		ac.getRequest().setAttribute("AppDomain", Globals.AppDomain);
		ac.getRequest().setAttribute("AppShrotName", Globals.AppShrotName);
		ac.getRequest().setAttribute("shiro", Mvcs.ctx().getDefaultIoc().get(ShiroUtil.class));
		ac.getRequest().setAttribute("date", Mvcs.ctx().getDefaultIoc().get(DateUtil.class));
		ac.getRequest().setAttribute("string", Mvcs.ctx().getDefaultIoc().get(StringUtil.class));
		// 如果url中有语言属性则设置
		String lang=ac.getRequest().getParameter("lang");
		if (!Strings.isEmpty(lang)) {
			Mvcs.setLocalizationKey(lang);
		}else{
			// Mvcs.getLocalizationKey()  1.r.56 版本是null,所以要做两次判断, 1.r.57已修复为默认值 Nutz:Fix issue 1072
			lang=Strings.isBlank(Mvcs.getLocalizationKey())?Mvcs.getDefaultLocalizationKey():Mvcs.getLocalizationKey();
		}
		ac.getRequest().setAttribute("lang", lang);
		doNext(ac);
	}

}
