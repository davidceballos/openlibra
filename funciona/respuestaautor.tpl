<!DOCTYPE html>
<html>
  <head>
    <title> Autor del libro </title>
  </head>
  <body>
    <p>
    <p>
      Los libros del autor {{nombreautor}} son:
    </p>
     <ul>
       %for i in libros:
       <li> {{i}} </li>
       %end
    <p> <a href="/">Volver al indice</a></p>
  </body>
</html>


