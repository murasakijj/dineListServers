package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Page;

public class ViewController extends HttpServlet  {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		makeSamplePage(request, response);
	}

	/**
	 * It is sample for Servlet.
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void makeSamplePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		Page.header(out, "SAMPLE SERVLET");

		// Request Parameter
	    out.println("■REQUEST PARAMETER<br>");
		Enumeration<String> paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
		    // パラメータ名を取得
		    String paramName = (String)paramNames.nextElement();
		    out.print(paramName);
		    out.print("=");

		    // パラメータ値を取得
		    String[] paramValues = request.getParameterValues(paramName);
		    for (int i = 0; i < paramValues.length; i++) {
		        if(i > 0){
		            out.print(",");
		        }
		        out.println(paramValues[i] + "<br>");
		    }
		}

		//Request Header
	    out.println("■REQUEST HEADER<br>");
		Enumeration<String> headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {

		    // ヘッダ名と値を取得
		    String headerName = (String)headerNames.nextElement();
		    String headerValue = request.getHeader(headerName);

		    out.print(headerName);
		    out.print("=");
		    out.print(headerValue);
		    out.println("<br>");
		}

		//Request Header
	    out.println("■ATTRIBUTES<br>");
		Enumeration<String> attrNames = request.getHeaderNames();
		while (attrNames.hasMoreElements()) {
		    // ヘッダ名と値を取得
		    String attrName = (String)attrNames.nextElement();
		    Object attrValue = request.getAttribute(attrName);

		    out.print(attrName);
		    out.print("=");
		    out.print(attrValue);
		    out.println("<br>");
		}
		//		    out.println(request.get + "<br>");
//		out.println(request.getServletPath() + "<br>");
//		out.println("Request Destination: " + request.getRequestURI() + "<br>");
//		out.println(new java.util.Date() + "<br>");
		Page.footer(out);
	}
}
