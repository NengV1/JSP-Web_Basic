package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.BufferedReader;
import java.io.FileReader;
import javax.annotation.PreDestroy;
import javax.annotation.PostConstruct;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            int count=0;

   @PostConstruct
   public void myLoad(){
              try {
                FileReader fr = new FileReader("C:\\Users\\NengV1\\Desktop\\sd.txt");
                BufferedReader br = new BufferedReader(fr);
                String countstr = br.readLine();
                count = Integer.parseInt(countstr.split("=")[1]);
                br.close();
                fr.close();
              } catch (Exception e) {
                  }
          
          }
     
   @PreDestroy
   public void saveCount(){
               try {
                FileWriter fr = new FileWriter("C:\\Users\\NengV1\\Desktop\\sd.txt");
                BufferedWriter br = new BufferedWriter(fr);
                br.write("count="+count);
                br.close();
                fr.close();         
                   } catch (Exception e) {
                   }
              
              
          }
          
          
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    Cookie[] c = request.getCookies();
    for (Cookie ca : c){
        session.setAttribute("user", ca.getValue());
        break;
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>TODO write contedsadsddnt</div>\n");
      out.write("        <a href=\"./hello\">Call </a>\n");
      out.write("        </br>   \n");
      out.write("         <a href=\"./login.html\">Login </a>\n");
      out.write("          <a href=\"./login2.html\">Login2</a>\n");
      out.write("    </br>\n");
      out.write("           <!--<a href=\"./Displayallcus.jsp\">Show all</a>-->\n");
      out.write("           <a href=\"./DisAllCust\">Show all</a>\n");
      out.write("           \n");
      out.write("           \n");
      out.write("          ");
      out.write("\n");
      out.write("          \n");
      out.write("    <center>Count visited");
      out.print( ++count);
      out.write("</center>\n");
      out.write("          \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
