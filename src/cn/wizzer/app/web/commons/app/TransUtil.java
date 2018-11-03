package cn.wizzer.app.web.commons.app;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;

/**
 * 将一个对象的属性值   拷贝给 另一个声明的对象
 * @author Administrator
 *
 */
public class TransUtil {

	protected final static Log log = LogFactory.getLog(TransUtil.class);

	/**
	 * 将sour 对象的属性值付给dest 的属性值
	 * @param sour
	 * @param dest
	 */
	public static void doTrans(Object sour, Object dest) {
		if (sour == null) {
			dest = null;
			return;
		}
		long start = System.currentTimeMillis();
		
		Class<?> sourClass = sour.getClass();
		Class<?> destClass = dest.getClass();

		for (Field modelField : sourClass.getDeclaredFields()) {

			String fieldName = modelField.getName();
			Object value;

			if (fieldName.equals("serialVersionUID")) {
				continue;
			}

			try {
				PropertyDescriptor pdModel = new PropertyDescriptor(fieldName,
						sourClass);
				value = pdModel.getReadMethod().invoke(sour);
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - " + dest.getClass().getName() + " - " + fieldName + " - " + e.getMessage());
				}
				continue;
			}

			if (value == null) {
				continue;
			}

			try {
				PropertyDescriptor pdDto = new PropertyDescriptor(fieldName,
						destClass);
				pdDto.getWriteMethod().invoke(dest, value);
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - " + dest.getClass().getName() + " - " + fieldName + " - " + e.getMessage());
				}
				continue;
			}
		}

		long end = System.currentTimeMillis();
		long time = (end - start);

		if (log.isInfoEnabled() && time > 20) {
			log.info("------ " + time + "ms ---------");
		}
	}
	
	/**
	 * 获取对象中某个属性的值
	 * @param sour 要查询的对象
	 * @param columnName 对象中字段的内容
	 * @return
	 */
	public static String getValue(Object sour,String columnName){
		if (sour == null) {
			return "";
		}
		
		Class<?> sourClass = sour.getClass();

		for (Field modelField : sourClass.getDeclaredFields()) {

			String fieldName = modelField.getName();
			Object value=null;

			if (fieldName.equals("serialVersionUID")) {
				continue;
			}
			if(!fieldName.equals(columnName))
				continue;

			try {
				PropertyDescriptor pdModel = new PropertyDescriptor(fieldName,
						sourClass);
				value = pdModel.getReadMethod().invoke(sour);
			} catch (Exception e) {
				e.printStackTrace();
			}

			if (value == null) {
				continue;
			}else{
				return value.toString();
			}
		}
		return null;
	}
	
	
	/**
	 * 通过判断 对象 sour和对象 dest中属性不一致来 判断 对象中的字段是否修改，
	 * 然后生成对应字段是否修改的缓存对象
	 * 三个表中的字段全部相同，                                                                                                      
	 * @param sour 未修改 之前的对象
	 * @param dest 修改之后的对象
	 * @param temp 字段属性的缓存，标示为0和1，  1已修改，0 未修改       字段值相同是未修改，不相同已修改  如果 字段的状态为1 ，那么不用再修改状态
	 */
	public static void doTransTemp(Object sour, Object dest,Object temp) {
		if (sour == null) {
			dest = null;
			return;
		}
		long start = System.currentTimeMillis();
		
		Class<?> sourClass = sour.getClass();
		Class<?> destClass = dest.getClass();
		Class<?> tempClass = temp.getClass();

		for (Field modelField : sourClass.getDeclaredFields()) {

			String fieldName = modelField.getName();
			Object sourvalue;
			Object descvalue;
			Object tempvalue;

			if (fieldName.equals("serialVersionUID")) {
				continue;
			}

			try {
				//获取到 修改之前对象中的一个字段属性
				PropertyDescriptor pdModel = new PropertyDescriptor(fieldName,sourClass);
				sourvalue = pdModel.getReadMethod().invoke(sour);
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + fieldName+ " - " + e.getMessage());
				}
				continue;
			}


			try {
				//获取修改之后的字段
				PropertyDescriptor pdDto = new PropertyDescriptor(fieldName,destClass);
				descvalue = pdDto.getReadMethod().invoke(dest);
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + fieldName+ " - " + e.getMessage());
				}
				continue;
			}
			try {
				Field f = tempClass.getDeclaredField(fieldName);
			} catch (Exception e) {
				//不存在字段，就报错 说字段不存在
				continue;
			}
			
			
			try {
				//生成缓存标示
				PropertyDescriptor pdtDto = new PropertyDescriptor(fieldName,tempClass);
				tempvalue = pdtDto.getReadMethod().invoke(temp);
				if( null == tempvalue  || tempvalue.equals("0")){
					// 修改之后的内容为空 说明没有修改
					if (null != descvalue) {
						if (descvalue.equals(sourvalue))
							pdtDto.getWriteMethod().invoke(temp, "0");
						else
							if(sourvalue == null && descvalue.equals("")){
								pdtDto.getWriteMethod().invoke(temp, "0");
							}else{
								pdtDto.getWriteMethod().invoke(temp, "1");
							}
						
					} else {
						pdtDto.getWriteMethod().invoke(temp, "0");
					}
				}else{
					pdtDto.getWriteMethod().invoke(temp, "0");
				}
				
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + temp.getClass().getName() + " - " +fieldName+ " - " + e.getMessage());
				}
				continue;
			}
			
		}

		long end = System.currentTimeMillis();
		long time = (end - start);

		if (log.isInfoEnabled() && time > 20) {
			log.info("------ " + time + "ms ---------_____");
		}
	}
	
	/**
	 * 通过一个对象中的字段的修改状态来判断是否修改当前的字段   
	 * 最终的结果是将远程对象的字段内容，根据本地字段是否允许修改，将远程的字段内容分装到本地对象中
	 * @param sour 这个对象中的字段要存入数据，但是要判断字段的状态是否允许存入。    （挂号网 远程对象， 远程对象） 
	 * @param dest 目标对象  最终要将这个对象的数据存入数据库	（本地数据库的字段，本地对象） 
	 * @param temp  对象 字段状态的标示   标示为0和1，  1 不允许修改，0  允许修改    
	 */
	public static void doTrans(Object sour, Object dest,Object temp) {
		if (sour == null) {
			dest = null;
			return;
		}
		long start = System.currentTimeMillis();
		
		Class<?> sourClass = sour.getClass();
		Class<?> destClass = dest.getClass();
		Class<?> tempClass = temp.getClass();

		for (Field modelField : sourClass.getDeclaredFields()) {

			String fieldName = modelField.getName();
			Object sourvalue;   //远程字段对象值
			Object descvalue;	//本地字段对象值
			Object tempvalue;	//本地字段是否允许修改的状态。  1 ， 0

			if (fieldName.equals("serialVersionUID")) {
				continue;
			}	
			//远程对象的字段
			try {
				PropertyDescriptor pdModel = new PropertyDescriptor(fieldName,sourClass);
				sourvalue = pdModel.getReadMethod().invoke(sour);
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + fieldName+ " - " + e.getMessage());
				}
				continue;
			}
			try {
				Field f = tempClass.getDeclaredField(fieldName);
			} catch (Exception e) {
				//不存在字段，就报错 说字段不存在
				continue;
			}

			//字段是否允许修改的标示
			try {
				PropertyDescriptor pdtDto = new PropertyDescriptor(fieldName,tempClass);
				tempvalue = pdtDto.getReadMethod().invoke(temp);
				
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + temp.getClass().getName() + " - " +fieldName+ " - " + e.getMessage());
				}
				continue;
			}
			//本地对象的字段
			try {
				PropertyDescriptor pdDto = new PropertyDescriptor(fieldName,destClass);
				if(null != tempvalue){
					//如果为0 的时候才允许重新赋值
					if( "0".equals(tempvalue)){
						pdDto.getWriteMethod().invoke(dest, sourvalue);
					}
				}
			} catch (Exception e) {
				if (log.isDebugEnabled()) {
					log.debug(sour.getClass().getName() + " - "+ dest.getClass().getName() + " - " + fieldName+ " - " + e.getMessage());
				}
				continue;
			}
		}

		long end = System.currentTimeMillis();
		long time = (end - start);

		if (log.isInfoEnabled() && time > 20) {
			log.info("------ " + time + "ms ---------_____");
		}
	}
	
}
