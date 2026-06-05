
---<Yeisson Fernando Mora cc: 1028007724 and Yully Varela Isaza CC: 32143184>--

----- INNER JOIN -----
-- Traer todas las peliculas con sus generos -----
select p.Titulo , g.nombre as Clasificacion
from tblPeliculas p
inner join tblPelicula_Genero pg
on p.peliculaID = pg.peliculaID
inner join tblGenero G on G.generoID = pg.generoID


--- Mostrar el nombre de los 7 clientes con el nombre de la peliculas que vieron y el precio de la entrada de la pelicula ----
SELECT top 7 C.fullName, p.titulo, E.Precio
from tblEntradas E
inner join tblClientes C ON E.ClienteID = C.ClienteID
inner join tblFunciones F on f.FuncionID = E.FuncionID
Inner join tblPeliculas P on P.peliculaID = f.peliculaID
 
 ---------Muestra el precio que le corresponde a cada función según la sala y clasificación de su película.----------
 SELECT p.titulo, s.NombreSala, c.edad_min, PR.precioBase
 from tblFunciones F
 inner join tblSalas S ON F.SalaID = S.SalaID
 inner join tblPeliculas p ON P.peliculaID = f.peliculaID 
 inner join tblClasificacion C on C.clasificacionID = p.clasificacionID
 inner join	tblPrecios PR ON PR.clasificacionID = C.clasificacionID
							AND PR.SalaID          = F.SalaID

------ LEFT JOIN ----------

--- Muestra todos los clientes y, si compraron alguna entrada,
--- muestra la función y el precio. Los clientes sin entradas deben aparecer con NULL.----
SELECT c.fullName,f.FuncionID,e.FechaCompra,e.Precio
FROM tblClientes C
left join tblEntradas e ON c.ClienteID = e.ClienteID
left join tblFunciones f ON f.FuncionID = e.FuncionID

  ----Muestra todas las películas y, si tienen función programada, muestra el horario
  ----y la sala. Las películas sin función deben aparecer igual.----
  SELECT P.titulo,F.FuncionID, F.Horario, S.NombreSala 
  FROM tblPeliculas P 
  left join tblFunciones F ON P. peliculaID = F.peliculaID
  left join tblSalas S ON S.SalaID = F.SalaID

