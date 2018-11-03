package cn.wizzer.app.web.commons.app;

import java.io.UnsupportedEncodingException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

public class Config {

	public static String getString(String key){
		ResourceBundle bundle = PropertyResourceBundle.getBundle("version");
		if(bundle.getString(key) == null){
			return "";
		}
		try {
			return new String(bundle.getString(key).getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "";
	}
}