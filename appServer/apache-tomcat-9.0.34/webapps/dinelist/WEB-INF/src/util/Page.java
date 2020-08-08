package util;

import java.io.PrintWriter;

public class Page {
  public static void header(PrintWriter out, String title) {
    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head>");
    out.println("<meta charset='UTF-8'>");
    out.println("<title>" + title + "</title>");
    out.println("</head>");
    out.println("<body>");
  }

  public static void footer(PrintWriter out) {
    out.println("</body>");
    out.println("</html>");
  }
}
