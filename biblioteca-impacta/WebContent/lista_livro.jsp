<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Livros</title>
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
              <li><a href="addlivro.jsp">Adiciona Livro</a></li>
              <li><a href="status_livro.jsp">Livro Status</a></li>
              <li  class="active"><a href="lista_livro.jsp">Lista Livros</a></li>  
              <%
              String session_user=(String)session.getAttribute("user");
              try{
              if(session_user!=null)
              {
             %>
             <li><button class="btn btn-primary" onclick="window.location.href='logout.jsp'">Logout</button></li>
             <%
              }
              }
              catch(Exception e)
              {
            	  out.println(e.getMessage());
              }
              %>
           
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
 
<p>Resumo dos Livros Disponíveis</p>
<%@page import="java.sql.*"%>
<table border=1>
<th>Id</th>
<th>Nome</th>
<th>Categoria</th>
<th>Paginas</th>
<th>Edição</th>
<th>Autor</th>
<th>Publicação</th>
<th>ISBN</th>
<%
Connection con=null;		//Create Connection Object
PreparedStatement pst=null;
ResultSet result=null;	
	//Create ResultSet Object
try{						//try block begins
Class.forName("com.mysql.jdbc.Driver");//Pass the Drive class name(ex.Mysql) in parameter of Class.forName
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

pst=con.prepareStatement("select * from detalhes_livro ");
result=pst.executeQuery();
while(result.next())
{	
out.println("<tr><td>"+result.getString("id")+"</td><td>"+result.getString("nome")+"</td><td>"+result.getString("categoria")+"</td><td> "+result.getString("paginas")+"</td><td> "+result.getString("edicao")+"</td><td> "+result.getString("autor")+"</td><td> "+result.getString("publicacao")+"</td><td> "+result.getString("isbn"));	
}
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

%>
</table>
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>


</body>
</html>