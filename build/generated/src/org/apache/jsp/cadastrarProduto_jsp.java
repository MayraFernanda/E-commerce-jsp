package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrarProduto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/tlds/simpleTag.tld");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body style= \"background-color:#7DCC86;\">\n");
      out.write("        ");
      projjsp.Produtos daoP = null;
      synchronized (_jspx_page_context) {
        daoP = (projjsp.Produtos) _jspx_page_context.getAttribute("daoP", PageContext.PAGE_SCOPE);
        if (daoP == null){
          daoP = new projjsp.Produtos();
          _jspx_page_context.setAttribute("daoP", daoP, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"jumbotron text-center\">\n");
      out.write("        <h1>Livraria Malígna</h1>\n");
      out.write("        <p>A melhor livraria online para você</p> \n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("            <content>\n");
      out.write("                <div class=\"login-page\">\n");
      out.write("                    <div class=\"form\"> \n");
      out.write("                <form class=\"login-form\" action=\"cadastrarProduto.jsp\">\n");
      out.write("                    <input type=\"text\" name=\"cod\" required=\"required\" value=\"\" placeholder=\"código\"><br><br>\n");
      out.write("                    <input type=\"text\" name=\"nome\" required=\"required\" value=\"\" placeholder=\"nome\"><br><br>\n");
      out.write("                    <input type=\"text\" name=\"preco\" required=\"required\" value=\"\" placeholder='preço'><br><br>\n");
      out.write("                    <input type=\"text\" name=\"estoque\" required=\"required\" value=\"\" placeholder='estoque' ><br><br>\n");
      out.write("                    <img alt=\"Imagem\" scr=\"\" id=\"target\" width=\"100\" height=\"100\"><br><br>\n");
      out.write("                    <input type=\"file\" id=\"file\" name=\"file\" onchange=\"uploadFile();\"/><br><br>                   \n");
      out.write("                    <input type=\"submit\" value=\"Cadastrar\" name=\"status\" >\n");
      out.write("                    </form>\n");
      out.write("            </content>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        \n");
      out.write("            <script type=\"text/javascript\"> \n");
      out.write("                function uploadFile(){\n");
      out.write("                    var target = document.querySelector(\"img\");\n");
      out.write("                    var file = document.querySelector(\"input[type=file]\").files[0];\n");
      out.write("                \n");
      out.write("                    var reader = new FileReader();\n");
      out.write("                    \n");
      out.write("                    reader.onloadend = function(){\n");
      out.write("                        target.src = reader.result;\n");
      out.write("                        \n");
      out.write("                         ///////// UPLOAD AJAX ////////////\n");
      out.write("                        \n");
      out.write("                        $.ajax({\n");
      out.write("                            method : \"POST\",\n");
      out.write("                            url: \"FileUpload\",\n");
      out.write("                            data: {fileUpload : reader.result}\n");
      out.write("                        }).done(function(response){\n");
      out.write("                            alert(\"Upload realizado com sucesso!\");\n");
      out.write("                        }).fail(function(xhr, status, errorThrown){\n");
      out.write("                            alert(\"Error: \" + xhr.responseText);\n");
      out.write("                        });\n");
      out.write("                        ///////// UPLOAD AJAX ////////////\n");
      out.write("                    };\n");
      out.write("                \n");
      out.write("                    if(file){\n");
      out.write("                        reader.readAsDataURL(file); \n");
      out.write("                    }else{\n");
      out.write("                        target.src=\"\";\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </script>\n");
      out.write("     \n");
      out.write("  \n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.status == 'Cadastrar'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                      \n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
