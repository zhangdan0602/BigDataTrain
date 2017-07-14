package cn.edu360_04;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class UploadServer {
	public static void main(String[] args) throws Exception {
		// 1.创建服务端的Socket对象并监听指定的端口
		ServerSocket ss = new ServerSocket(8888);
		while (true) {
			// 2.获取客户端的连接对象
			Socket s = ss.accept();
			// 3.将字节读取流包装成字节缓冲读取流
			BufferedInputStream bis = new BufferedInputStream(s.getInputStream());
			// 4.将图片要写出的目的文件封装在流中
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream("D:/" + System.currentTimeMillis() + ".jpg"));
			// 循环读写
			byte[] buf = new byte[1024];
			int len;
			while ((len = bis.read(buf)) != -1) {
				bos.write(buf, 0, len);
			}
			bos.close();
			System.out.println("保存图片成功");
			// 5.给客户度返回结果
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(s.getOutputStream()));
			bw.write("上传成功");
			bw.newLine();
			bw.flush();
			s.close();
		}
	}
}
