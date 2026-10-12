package br.com.lab;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/status")
public class StatusServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.setStatus(HttpServletResponse.SC_OK);

        response.getWriter().println("Aplicacao: " + AppInfo.getName());
        response.getWriter().println("Versao: " + AppInfo.getVersion());
        response.getWriter().println("Status: " + AppInfo.getStatus());
    }
}
