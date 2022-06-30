<?php
require_once("Estudiantes.php");
$Estudiantes=new Estudiantes();
$datos=$_REQUEST;

if(empty($datos['est_id'])){
$Estudiantes->create($datos["est_nombres"],
$datos['est_apellidos'],
$datos['est_cedula'],
$datos['est_ciudad'],
$datos['est_edad'],
$datos['est_genero']);

}else{  ///modfico/elimio estudiante

	if(isset($datos['est_nombres'])){

$Estudiantes->update($datos["est_nombres"],
$datos['est_apellidos'],
$datos['est_cedula'],
$datos['est_ciudad'],
$datos['est_edad'],
$datos['est_genero'], $datos['est_id']);

}else{
	$Estudiantes->delete($datos['est_id']);
	}
}
//CODIGO PARA QUE SE REDIRECCONE AL INDEX//
header("Location:lista_estudiantes.php");

?>