<?php
require_once("Estudiantes.php");
$Estudiantes=new Estudiantes();
if(isset($_GET['est_id'])){
	$datos=$Estudiantes->edit($_GET['est_id']);
}else{
	$datos['est_id']=NULL;
	$datos['est_nombres']=NULL;
	$datos['est_apellidos']=NULL;
	$datos['est_cedula']=NULL;
	$datos['est_ciudad']=NULL;
	$datos['est_edad']=NULL;
	$datos['est_genero']=NULL;

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Formulario estudiante</title>
	<style>
		.contenedores{
			margin-top:2px ;
			margin-left: 100px;
		}
		label{
			background:#e9afa3;
			width: 100px;
			float: left;
			font-family:Century Schoolbook;
			font-size: 16px;

		}
	</style>
</head>
<body>
	<h1 style="text-align:center; background:#99b2dd; color:#f9dec9; font-family:Castellar;">Formulario de registro de estudiantes</h1>

	<form action="acciones_estudiantes.php" method="POST">

		<div class="contenedores">
			<label for="est_nombres">Nombres</label>
		    <input type="hidden" name="est_id" id="est_id" value="<?php echo $datos['est_id']?>">
		    <input type="text" name="est_nombres" id="est_nombres" value="<?php echo $datos['est_nombres']?>">
		</div>
          
		<div class="contenedores">
			<label for="est_apellidos">Apellidos</label>
		    <input type="text" name="est_apellidos" id="est_apellidos" value="<?php echo $datos['est_apellidos']?>">
		</div>

		<div class="contenedores">
			<label for="est_cedula">Cedula</label>
		    <input type="text" name="est_cedula" id="est_cedula" value="<?php echo $datos['est_cedula']?>">
		</div>

		<div class="contenedores">
			<label for="est_ciudad">Ciudad</label>
		    <input type="text" name="est_ciudad" id="est_ciudad" value="<?php echo $datos['est_ciudad']?>">
		</div>

		<div class="contenedores">
			<label for="est_edad">Edad</label>
		    <input type="text" name="est_edad" id="est_edad" value="<?php echo $datos['est_edad']?>">
		</div>

		<div class="contenedores">
			<label for="est_genero">Genero</label>
		    <input type="text" name="est_genero" id="est_genero" value="<?php echo $datos['est_genero']?>">
		</div>

		<div class="contenedores">
		<button>Guardar</button>
		</div>


	</form>
</body>
</html>