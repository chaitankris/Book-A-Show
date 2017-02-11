package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
 
    String  Username = (String)session.getAttribute("fn");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("   \n");
      out.write("  <title>User Home Page </title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write(" <link rel=\"stylesheet\" href=\"css/Source.css\">\n");
      out.write("        <script src=\"js/Sourcejs1.js\"></script>\n");
      out.write("        <script src=\"js/Sourcejs2.js\"></script>\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("    /* Remove the navbar's default margin-bottom and rounded borders */\n");
      out.write("    .navbar {\n");
      out.write("      margin-bottom: 0;\n");
      out.write("      border-radius: 0;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    /* Add a gray background color and some padding to the footer */\n");
      out.write("   footer {\n");
      out.write("      background-color: #f2f2f2;\n");
      out.write("      padding: 25px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("   .carousel-inner > .item > img,\n");
      out.write("  .carousel-inner > .item > a > img {\n");
      out.write("      width: 70%;\n");
      out.write("      margin: auto;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  </style>\n");
      out.write("  <script>\n");
      out.write("      function configButtons() {\n");
      out.write("          var btnArr = document.querySelectorAll('.book-btn');\n");
      out.write("          for (var i = btnArr.length - 1; i >= 0; --i)\n");
      out.write("              btnArr[i].addEventListener('click', myFun);\n");
      out.write("      }\n");
      out.write("        \n");
      out.write("      function myFun(event){\n");
      out.write("          var name = event.target.name;\n");
      out.write("          var _url = window.location.href;\n");
      out.write("          _url = _url.replace(\"UserPage.jsp\", \"MovieDesign.jsp?m_n=\" + name);\n");
      out.write("          \n");
      out.write("          window.location.href = _url;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      window.addEventListener('load', configButtons, true);  \n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<!-- Navigation -->\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"Home.html\">T.K.C Movies</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"Home.html\">Home</a></li>\n");
      out.write("        <li><a href=\"Adminstration.html\">Adminstration</a></li>\n");
      out.write("        <li><a href=\"Movies.html\">Movies</a></li>\n");
      out.write("        <li><a href=\"#\">Contact Support</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"Logout.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Logout, ");
      out.print(Username);
      out.write("</li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"width:100%; margin: 0 auto\">\n");
      out.write("<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("     <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("    \n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("  <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"images/1.GOG.jpg\" style=\"width:60%;height:520px\" >\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"images/2.WW.jpg\" style=\"width:60%;height:520px\" >\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("  \n");
      out.write("    <div class=\"item\">\n");
      out.write("        <img src=\"images/3.NL.jpg\" style=\"width:60%;height:520px\" >\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("     <div class=\"item\">\n");
      out.write("        <img src=\"images/4.S3.jpgp.jpg\" style=\"width:60%;height:520px\">\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("   \n");
      out.write("  \n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("  <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("   </div>\n");
      out.write("  \n");
      out.write("\n");
      out.write(" <script>\n");
      out.write("    $('.carousel').carousel({\n");
      out.write("        interval: 5000 //changes the speed\n");
      out.write("    })\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"container text-center\">\n");
      out.write("  <h3>Now Playing </h3><br>\n");
      out.write("  <div class=\"\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <img src=\"images/GOG.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\"  alt=\"Image\">\n");
      out.write("      <h4> <p>The Guardians Of Galaxy 2</p> </h4>\n");
      out.write("\t\n");
      out.write("      <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"TheHuntsMan\">Book Now!</button> \n");
      out.write("      \n");
      out.write("\t</div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <img src=\"images/JollyLLB.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("      <h4><p>JollyLLB 2   </p> </h4>\n");
      out.write("\t  \n");
      out.write("      <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"Kabali\">Book Now!</button> \n");
      out.write("      \n");
      out.write("\t  \n");
      out.write("    </div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"col-sm-4\">\n");
      out.write("      <img src=\"images/nenu_local.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("     <h4> <p> Nenu Local </p></h4>\n");
      out.write("\t  \n");
      out.write("     <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\"  name=\"GentleMen\">Book Now!</button>\n");
      out.write("      \n");
      out.write("    \n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"col-sm-4\">\n");
      out.write("\t<br>\n");
      out.write("      <img src=\"images/Rangoon.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("      <h4><p>Rangoon</p></h4>\n");
      out.write("      <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"Sultan\">Book Now!</button>\n");
      out.write("      \n");
      out.write("       \n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"col-sm-4\">\n");
      out.write("\t<br>\n");
      out.write("      <img src=\"images/WW.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("      <h4><p>Wonder Woman</p></h4>\n");
      out.write("\t  \n");
      out.write("      <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"SelfieeRaja\">Book Now!</button> \n");
      out.write("      \n");
      out.write("\t</div>\n");
      out.write("\t<br>\n");
      out.write("\t<div class=\"col-sm-4\">\n");
      out.write("\t<br>\n");
      out.write("      <img src=\"images/Singam3.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("      <h4><p>Singam 3</p></h4>\n");
      out.write("\t <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"IceAgeCollision\">Book Now!</button>\n");
      out.write("      \n");
      out.write("\t\n");
      out.write("    </div>\n");
      out.write("\t<br>\n");
      out.write("\t<div class=\"col-sm-4\">\n");
      out.write("\t<br>\n");
      out.write("      <img src=\"images/jaggajasoos.jpg\" class=\"img-responsive\" style=\"width:240px;height:320px\" alt=\"Image\">\n");
      out.write("      <h4><p> Jagga Jasoos</p></h4>\n");
      out.write("      <button type=\"button\" class=\"book-btn btn btn-primary btn-lg\" name=\"SSS\">Book Now!</button> \n");
      out.write("      \n");
      out.write("\t  \n");
      out.write("    </div>\n");
      out.write("    <br>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"container-fluid text-center\">\n");
      out.write("  <p> Copyrights © T.K.C Movies</p>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
