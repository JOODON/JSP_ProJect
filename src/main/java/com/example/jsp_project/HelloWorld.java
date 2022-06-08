package com.example.jsp_project;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/helloworld")
public class HelloWorld extends HttpServlet {
    private String message;
    private String message2;//메세지라는 필드를 만들어줌

    public void init() {
        message = "Hello World!";//메세지를 출력해주는 필드를 생성
        message2 = "My Name Is Servelt";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("doGet");
        response.setContentType("text/html");//HTML파일로 응답을 해주겠다.
        // Hello
        PrintWriter out = response.getWriter();//웹 브라우저에서 출력하기 위핸 스트림
        out.println("<html><body>");//기본적인 HTML사용
        out.println("<h1>" + message + "</h1>");
        out.println("<h1>" + message2 + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }

}