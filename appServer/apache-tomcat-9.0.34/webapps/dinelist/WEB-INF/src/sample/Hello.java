package sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Page;

//@WebServlet(urlPatterns={"/sample/hello"})
public class Hello extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html; charset=UTF-8");
    PrintWriter out = response.getWriter();

    Page.header(out, "SAMPLE SERVLET");
    out.println("Hello! Running Servlet!!<br>");
    out.println("It becomes reloadable<br>");
    out.println(new java.util.Date() + "<br>");
    Page.footer(out);
  }
}

