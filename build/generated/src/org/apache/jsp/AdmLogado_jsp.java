package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdmLogado_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Área Administrador</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"jumbotron text-center\">\n");
      out.write("        <h1>Livraria Malígna</h1>\n");
      out.write("        <p>A melhor livraria online para você</p> \n");
      out.write("        <h6>\n");
      out.write("            <form action=\"Index.jsp\">\n");
      out.write("                <input type=\"text\" name=\"busca\" value=\"\" id=\"txtBusca\" placeholder=\"Produto...\" style=\"border: 1px solid #ccc;\n");
      out.write("                border-radius: 4px;\">\n");
      out.write("                <input type=\"submit\" value=\"Buscar\" name=\"status\">\n");
      out.write("                <a href=\"login.jsp\">Login</a>\n");
      out.write("                <a href=\"login.jsp\">Sing in</a>\n");
      out.write("            </form>     \n");
      out.write("        </h6>      \n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("            <content>               \n");
      out.write("                <h4> <a href=\"alterarSenhaAdm.jsp\"> Alerar sua senha</a></h4><p>\n");
      out.write("                <h4> <a href=\"alterarSenhaAdm.jsp\"> Cadastrar Administrador</a></h4><p>\n");
      out.write("                <h4> <a href=\"alterarSenhaAdm.jsp\"> Excluir Administrador</a></h4><p>\n");
      out.write("                <h4><a href=\"produtos.jsp\"> Produtos</a></h4><p>\n");
      out.write("                <h4><a href=\"clientes.jsp\"> Clientes</a></h4> \n");
      out.write("            </content>   \n");
      out.write("        </div>\n");
      out.write("        \n");
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
