<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> ¿Que quiere hacer en OpenLibra?</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="centrar">
      <div id="cabezera">
	<h1> Bienvenido a la Web API de Openlibra</h1>
	<ul id="menu">
	  <li><a href="/" title="Indice">Indice</a></li>
	  <li><a href="id" title="ID">ID</a></li>
	  <li><a href="librosmasvisto" title="CATEGORIA" class="active">Categoria</a></li>
	  <li><a href="respuestamasvotados" title="MASVOTADOS">Mas Votados</a></li>
	  <li><a href="librosdeunautor" title="LIBROSAUTOR">Libros de un Autor</a></li>
	</ul>
      </div>
      <div id="texto">
	<div>
	  <img src="style/openlibra.png" alt="image" title="image" />
	  <h3> <br> Elige una categoria </br> </h3>
	  <p><p><p>	
	  <form action="/respuestacategoria" method="POST">	
	    <select name="categoria">	
	      <option selected>Elige categoria</option>	
	      <option value="programacion">Programacion</option>
	      <option value="bases_de_datos">Bases de Datos</option>
	      <option value="ajedrez">Ajedrez</option>
	      <option value="libros_aspecotos_legales">Aspectos Legales</option>
	      <option value="ciencia">Ciencia</option>
	      <option value="cine">Cine</option>
	      <option value="comics">Comics</option>
	      <option value="control_de_versiones">Control de Versiones</option>
	      <option value="desarrollo_web">Desarrollo Web</option>
	      <option value="diseno_3d">Diseño-3D</option>
	      <option value="educacion-biblioteca">Educacion</option>
	      <option value="ensayos_y_novelas">Ensayos-Novela</option>
	      <option value="idiomas">Idiomas</option>
	      <option value="informacion">Informacion</option>
	      <option value="marketing_y_business">Marketing-Business</option>
	      <option value="metodologias_agiles">Metodologias Agiles</option>
	      <option value="multimedia-biblioteca">Multimedia</option>
	      <option value="redes_y_sysadmins">Redes y Sys Admin</option>
	      <option value="revistas">revistas</option>
	      <option value="robotica">robotica</option>
	      <option value="seo_y_sem">Seo-Sem</option>
	      <option value="software-general">Software General</option>
	      <option value="libros_software_libre">Software Libre</option>
	      <option value="textos-academicos-biblioteca">Textos Academicos</option>
	      <option value="libros_web_2_0_y_social_media">Web 2.0 y Social media</option>
	    </select>
	    <input type='submit' value='Enviar'/>
	  </form>
	</div>
      </div>
    </body>
  </html>
  
