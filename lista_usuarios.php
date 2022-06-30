<?php
require_once("Usuarios.php");
$Usuarios=new Usuarios();
$consulta=$Usuarios->listar_usuarios();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>lista Usuarios</title>
	<style>
		th{
			padding: 5px;
			background: black;
			color:white;
		}
		td{
			padding: 5px;
			border:solid 1px #807979;
		}
		table{
			width:80%;
			border-collapse:collapse;
		}
		a{
			background:#b1b5c8 ;
			color:#F2EDED;
			text-decoration:none;
			padding:5px;
			font-family: Arial;
			border-radius:5px;
		}
		img{
			width:20px;
		}
		img{
			width:20px;
		}

	</style>
</head>
<body>
	<h1 style="background:#735cdd;text-align:center;color:white;">Lista Usuarios </h1>
	<a href="formulario_usuario.php">Nuevo usuario</a>
	<table align="center">
		<tr>
			<th style="background:#CD7272;color:white;">#</th>
			<th style="background:#CD7272;color:white;">Nombres</th>
			<th style="background:#CD7272;color:white;">Apellidos</th>
			<th style="background:#CD7272;color:white;">Cedula</th>
			<th style="background:#CD7272;color:white;">Edad</th>
			<th style="background:#CD7272;color:white;">Ciudad</th>
			<th style="background:#CD7272;color:white;">Genero</th>
			<th>Acciones</th>
		</tr>
		<?php
		$x=0;
		foreach ($consulta as $c) {
			$x=$x+1;
			echo "<tr>
			     <td>$x</td>
			      <td>{$c["usu_nombres"]}</td>
			      <td>{$c["usu_apellidos"]}</td>
			      <td>{$c["usu_cedula"]}</td>
			      <td>{$c["usu_edad"]}</td>
			      <td>{$c["usu_ciudad"]}</td>
			      <td>{$c["usu_genero"]}</td>
			      <td>

			      <a href='formulario_usuario.php?usu_id={$c["usu_id"]}'>
			      <img src='edit.png'/>
                  </a>

			      <a href='acciones_usuarios.php?usu_id={$c["usu_id"]}' onclick='return validar()'>
			      <img src='delete.png'/>
			      </a>

			      </td>

			</tr>";
		}

	

		?>
	</table>
</body>
</html>
<script>
	function validar(){
		if(confirm("Desea Eliminar")){
			return true;
		}else{
			return false;
		}
	}
</script>