package zd.cookie;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestCookie2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        Cookie[] cookies=request.getCookies();
        for (Cookie cookie : cookies) {
			if("name".equals(cookie.getName())){
				String value=cookie.getValue();
				//进行解码
				String rs=URLDecoder.decode(value, "UTF-8");
				System.out.println(rs);
			}
		}
        
        
    }

}