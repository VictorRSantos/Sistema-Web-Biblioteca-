<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adiciona Livro</title>
	<link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
    <script>
	$(function(){
	$('.dropdown-toggle').dropdown()
	});
	</script>
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
</head>
<body>

		<div class="container">
       
                 <a class="brand" href="#"></a>
          <h3>Biblioteca Impacta</h3>
		  <div class="tabbable tabs-below">
<ul class="nav nav-pills">
		      <li ><a href="index.jsp">Home</a></li>
              <li><a href="saida_livro.jsp">Saida Livro</a></li>
              <li><a href="return_livro.jsp">Retorno Livro</a></li>
              <li class="active"><a href="addlivro.jsp">Adiciona Livro</a></li>
              <li><a href="status_livro.jsp">Status Livro</a></li>  
              <li><a href="lista_livro.jsp">Lista Livros</a></li>
              <li><button class="btn btn-primary" onclick="window.location.href='logout.jsp'">Logout</button></li>
			</ul>
      	
			<ul class="nav nav-list">
            <li class="nav-header"></li>
            <li class="active"><a href="#"></a></li>
            <li><a href="#"></a></li>
            </ul>
                     	
			


		 </div><!--/.nav-collapse -->
        </div>
      <div class="container">
    </div>
      
     <div class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="navbar-inner">
     <div class="container">
     <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="active" href="#">Support@OnlinImpacta.com</a>
    </div>
  </div>
</div>

<!-- Wrap all page content here -->
<div id="wrap">
  <div class="container">
 
    <p>Adiciona Livro</p>
    <%@page import="java.sql.*" %>
<% 

String session_user=(String)session.getAttribute("user");
try{
if(session_user!=null)
{
String submit=null;
submit=request.getParameter("submit");
if(submit!=null)
{
	String nome=request.getParameter("nome");
	String categoria=request.getParameter("categoria");
	String paginas=request.getParameter("paginas");
	String edicao=request.getParameter("edicao");
	String autor=request.getParameter("autor");
	String publicacao=request.getParameter("publicacao");
	String isbn=request.getParameter("isbn");	
	out.println(nome+categoria+paginas+edicao+publicacao+isbn);
	
	Connection con = null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	<<<<<<<<<<<<<<<ALTERAR USUARIO,SENHA BANCO AQUI !!!!!!!!!!!!!!<<<<<<>
	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	*/
	con=DriverManager.getConnection("jdbc:mysql://localhost/biblioteca","root","abc123**");
	/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	<<<<<<<<<<<<<<<ALTERAR USUARIO,SENHA BANCO AQUI !!!!!!!!!!!!!!<<<<<<>
	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	*/
	
	String	sqlInsertItem="insert into detalhes_livro(nome,categoria,paginas,edicao,publicacao,isbn,autor) values('" + nome + "','" + categoria + "','" + paginas + "','" + edicao + "','" + publicacao + "','" + isbn + "','" + autor + "')";
	pstInsertItem=con.prepareStatement(sqlInsertItem);
	pstInsertItem.executeUpdate();
	out.println("Adicionado com sucesso");
	}
	catch(ClassNotFoundException e){
		out.println("<b>Driver Class not found Exception: </b>"+e.getMessage());
		
	}
	catch(SQLException e){
		out.println("<b>SQL EXception:</b>"+e.getMessage());
	}
	finally{
		try{
	if(con!=null)
		con.close();
		}
		catch(SQLException e){
			out.println("<br>Connection Closing Exception: </b>"+e.getMessage());
			
		}
	}
	}
}
else
	response.sendRedirect("index.jsp");
}
catch(Exception e){
	out.println(e.getMessage());
}
%>

<form action="addlivro.jsp">
<p>Nome:<input type="text" name="nome"></p>
<p>Categoria:<input type="text" name="categoria"></p>
<p>Paginas:<input type="text" name="paginas"></p>
<p>Edição:<input type="text" name="edicao"></p>
<p>Autor:<input type="text" name="autor"></p>
<p>Publicação:<input type="text" name="publicacao"></p>
<p>ISBN:<input type="text" name="isbn"></p>
<input type="submit" value="Gravar" name="submit">
</form>
    
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>



</body>
</html>