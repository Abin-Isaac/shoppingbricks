package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import connect.ConnectionProvider;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public final class details_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  ");
  
Integer pid=Integer.parseInt(request.getParameter("pid")); 
String query="select * from product where pid="+pid;
Connection con=ConnectionProvider.getCon(); 
Statement stmt= con.createStatement();

ResultSet rs12 =stmt.executeQuery(query);
while(rs12.next())
{
	 
	Integer price1=Integer.parseInt(rs12.getString("price"));
	 
	price1=price1+(price1*10)/100;
	 
	
	 
	Integer pid1=rs12.getInt(1);
	pid1=pid1+1;
	
	 

      out.write("\t \t\t \r\n");
      out.write("<style>\r\n");
      out.write("#items li {float:left;width:195px;padding:10px;height:auto;position:relative; border:2px solid silver; display:inline-block}\r\n");
      out.write("\t\r\n");
      out.write("\t#items li:hover { border:2px solid #FF9F01;}\r\n");
      out.write("\t#items a.title {height:18px; color:#000000; margin:10px;}\r\n");
      out.write("\t\t#items a img {width:170px;border:1px solid #fff;-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2); border-radius:5px; }\r\n");
      out.write("\t\t\r\n");
      out.write("\t#items strong {border-bottom: 1px solid #ececec;display:block;padding-bottom:5px; color:#2797E8;}\r\n");
      out.write("\t\t#items strong em {float:right;font-weight:normal;font-size:0.833em; }\r\n");
      out.write("        </style>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        \t<div class=\"row\" style=\"margin:10px\">\r\n");
      out.write(" \r\n");
      out.write(" <ul id=\"items\">\r\n");
      out.write("        <li>\r\n");
      out.write("<center><a class=\"aimg\" href=\"moreinfo.jsp?pid=");
      out.print(rs12.getString("pid"));
      out.write("\"><img src=\"");
      out.print(rs12.getString(5));
      out.write("\" style=\" width:180px;  border-radius:2px;\" alt=\"Elegant evening Dress\"/></a></center>\r\n");
      out.write("            <a class=\"title\" style=\"color:#007CCB; margin-top:5px;\" href=\"moreinfo.jsp?pid=");
      out.print(rs12.getString("pid"));
      out.write('"');
      out.write('>');
      out.print(rs12.getString("pname"));
      out.write("</a>           \r\n");
      out.write("            <div style=\"color:green; display:block\">Availabilty:&nbsp;");
      out.print(rs12.getInt("pquantity"));
      out.write(" in Stock</div>\r\n");
      out.write("            <div  style=\"display:block; font-size:14px; font-weight:500;\"><span class=\"reduce fa fa-inr\">&nbsp");
      out.print(price1 );
      out.write("</span> <span class=\"price fa fa-inr\"> ");
      out.print(rs12.getString("price") );
      out.write("</span>       \r\n");
      out.write("            </div>\r\n");
      out.write("           <a href=\"AddCart1?pid=");
      out.print(rs12.getInt(1));
      out.write("\" <button class=\"btn btn-primary\" style=\"margin-top:10px;\"><i class=\"fa fa-cart-plus\">&nbsp Add To Cart </i> </button> </a>\r\n");
      out.write("        \r\n");
      out.write(" \r\n");
      out.write("          \r\n");
      out.write("      </li>\r\n");
      out.write("      </ul>\r\n");
      out.write(" \r\n");
      out.write("           \r\n");
      out.write("  ");
} 
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("</div>   \r\n");
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
