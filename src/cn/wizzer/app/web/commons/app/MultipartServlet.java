package cn.wizzer.app.web.commons.app;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wizzer.framework.util.DateUtil;

public class MultipartServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		JSONObject json = new JSONObject();
		// 获得磁盘文件条目工厂。
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 获取文件上传需要保存的路径，upload文件夹需存在。6
		String path = request.getSession().getServletContext()
				.getRealPath("/static/upload/file/");
		File file = new File(path);
		if (!file.isFile()) {
			if (!file.getParentFile().exists()) {
				file.getParentFile().mkdirs();
			}

			file.mkdir();
		}
		// 设置暂时存放文件的存储室，这个存储室可以和最终存储文件的文件夹不同。因为当文件很大的话会占用过多内存所以设置存储室。
		factory.setRepository(new File(path));
		// 设置缓存的大小，当上传文件的容量超过缓存时，就放到暂时存储室。
		factory.setSizeThreshold(1024 * 1024);
		// 上传处理工具类（高水平API上传处理？）
		ServletFileUpload upload = new ServletFileUpload(factory);
		//JSONObject json = new JSONObject();
		int userId = 0;
		int type = 0;
		try {
			// 调用 parseRequest（request）方法 获得上传文件 FileItem 的集合list 可实现多文件上传。
			List<FileItem> list = (List<FileItem>) upload.parseRequest(request);
			for (FileItem item : list) {
				// 获取表单属性名字。
				String name = item.getFieldName();
				// 如果获取的表单信息是普通的文本信息。即通过页面表单形式传递来的字符串。
				if (item.isFormField()) {

				}
				else {
					// 获取路径名
					String value = item.getName();
					// 取到最后一个反斜杠。
					int start = value.lastIndexOf("\\");
					// 截取上传文件的 字符串名字。+1是去掉反斜杠。
					String filename = value.substring(start + 1);
					int index = filename.lastIndexOf(46);
					String dest = filename.substring(0, index);
					String suffix = filename.substring(index);
					if(1==1) {
						filename = new Date().getTime() + new Random().nextInt(9)
								+ suffix;
						request.setAttribute(name, filename);
						String time = DateUtil.format(new Date(),"yyyyMMddHHmmss");
						path += time;
						new File(path).mkdirs();

						// 收到写到接收的文件中。
						OutputStream out = new FileOutputStream(new File(path,
								filename));
						InputStream in = item.getInputStream();

						int length = 0;
						byte[] buf = new byte[Integer.valueOf(item.getSize()+"")];
						System.out.println("获取文件总量的容量:" + item.getSize());

						while ((length = in.read(buf)) != -1) {
							out.write(buf, 0, length);
						}
						in.close();
						out.close();
						String basePath = request.getScheme() + "://"
								+ request.getServerName() + ":"
								+ request.getServerPort()
								+ request.getContextPath();

						json.put("url", basePath + "/static/upload/file/"+ time+"/" + filename);
						json.put("code", 0);
						json.put("msg", "上传成功");
					}else{
						json.put("code", 1);
						json.put("msg", "格式错误");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			/*json.put("status", "0");
			json.put("message", "系统出错");*/
		}
		response.getWriter().write(json.toString());
	}
}
