package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Connection.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");



Class.forName("oracle.jdbc.driver.OracleDriver");
String uri ="jdbc:oracle:thin:@localhost:1521:xe";
String username ="system";
String password ="raj11199";
Connection con=DriverManager.getConnection(uri,username,password);


      out.write('\n');
      out.write('\n');

 //  String query = "create table users (FirstName varchar(30),LastName varchar(30),UserName  varchar(30),Email varchar(255),MobileNumber number,Password varchar(20))";
String Fn = request.getParameter("FirstName");
String Ln = request.getParameter("LastName");
String Username = request.getParameter("UserName");
String  MobileNo= request.getParameter("phone");
String Email = request.getParameter("email");
String Pass = request.getParameter("pwd");

out.println(Email);

String query ="insert into users values(?,?,?,?,?,?)";  
/*PreparedStatement ps = con.prepareStatement(query);
 ps.setString(1,Fn);
 ps.setString(2,Ln);
 ps.setString(3,Username);
 ps.setString(4,Email);
 ps.setString(5,MobileNo);
 ps.setString(6,Pass);
 
 ResultSet rs = ps.executeQuery();*/

      out.write(' ');
      out.write('\n');
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
