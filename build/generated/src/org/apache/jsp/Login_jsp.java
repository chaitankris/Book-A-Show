package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Connection.jsp");
    _jspx_dependants.add("/Login.html");
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
 
  String Email= request.getParameter("email");
  String pass = request.getParameter("pwd");
  String query = "select * from UserDatabase where Email = ? and Password = ?";
  PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1, Email);
  ps.setString(2, pass);
  
  ResultSet rs = ps.executeQuery();
  
  if(rs.next()){
      response.sendRedirect("UserPage.jsp");
  }
  else{

      out.write('\n');
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Login</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"Source.css\">\r\n");
      out.write("        <script src=\"Sourcejs1.js\"></script>\r\n");
      out.write("        <script src=\"Sourcejs2.js\"></script>\r\n");
      out.write(" <style>\r\n");
      out.write("     /* Remove the navbar's default margin-bottom and rounded borders */\r\n");
      out.write("   .navbar {\r\n");
      out.write("       margin-bottom: 0;\r\n");
      out.write("       border-radius: 0;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    /* Add a gray background color and some padding to the footer */\r\n");
      out.write("    footer {\r\n");
      out.write("      background-color: #f2f2f2;\r\n");
      out.write("      padding: 25px;\r\n");
      out.write("      position:absolute;\r\n");
      out.write("      bottom:0;\r\n");
      out.write("      width:100%;\r\n");
      out.write("      font-weight: bold;\r\n");
      out.write("      font-family: arial;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <nav class=\"navbar navbar-inverse\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("      </button>\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">T.K.C Movies</a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("      <ul class=\"nav navbar-nav\">\r\n");
      out.write("        <li class=\"active\"><a href=\"Home.html\">Home</a></li>\r\n");
      out.write("        <li><a href=\"#\">Adminstration</a></li>\r\n");
      out.write("        <li><a href=\"Movies.html\">Movies</a></li>\r\n");
      out.write("        <li><a href=\"#\">Contact Support</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("        <li><a href=\"Login.html\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<br><br><br><br><br><br><br>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  \r\n");
      out.write("  <form class=\"form-horizontal\" role=\"form\" action=\"Login.jsp\">\r\n");
      out.write("    <div class=\"form-group\">\r\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"email\">Email:</label>\r\n");
      out.write("      <div class=\"col-sm-10\">\r\n");
      out.write("          <input type=\"email\" name=\"email\" class=\"form-control\"  placeholder=\"Enter email\">\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"form-group\">\r\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"pwd\">Password:</label>\r\n");
      out.write("      <div class=\"col-sm-10\">\r\n");
      out.write("        <input type=\"password\" class=\"form-control\" name=\"pwd\" placeholder=\"Enter password\">\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"form-group\">\r\n");
      out.write("      <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("        <div class=\"checkbox\">\r\n");
      out.write("          <label><input type=\"checkbox\"> Remember me</label>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"form-group\">\r\n");
      out.write("      <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("        <button type=\"submit\" class=\"btn btn-success\">Submit</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  <tr>\r\n");
      out.write("   \r\n");
      out.write("  \r\n");
      out.write("   </tr>\r\n");
      out.write("  </form>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("  \r\n");
      out.write("   <a href=\"Registeration.html\"> Not yet register! Register now</a>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"container-fluid text-center\">\r\n");
      out.write("             <p> Copyrights Â© T.K.C Movies</p>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
      out.write("\n");
      out.write("\n");
      out.write("    <h4><font color = \"red\"> InValid User Credentials !</font></h4>\n");
      out.write("   ");
 
  }
   
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
