    <?php

   $host="localhost";
$user="root";
$password="";
$db="registro_01";
$con = mysqli_connect($host,$user,$password,$db);
    
/*if(!empty($_POST)){
   
	if(isset($_POST["rut_a"]) &&isset($_POST["nombre_a"]) &&isset($_POST["apellidos_a"]) &&isset($_POST["edad_a"]) &&isset($_POST["fechanac_a"])
      &&isset($_POST["sexo_a"]) &&isset($_POST["telefono"]) &&isset($_POST["direccion_a"]) &&isset($_POST["ciudad_a"])  &&isset($_POST["provincia_a"]) &&isset($_POST["pais_a"]) &&isset($_POST["rut_p"])){*/
		
$sql = "insert into alumnos(rut_a,
nombre_a,
apellidos_a,
edad_a,
fechanac_a,
pais_a,
ciudad_a,
provincia_a,
direccion_a,
sexo_a,
telefono) value (\"$_POST[rut_a]\",\" $_POST[nombre_a]\",\"$_POST[apellidos_a]\",\" $_POST[edad_a]\",\"$_POST[fechanac_a]\",\"$_POST[pais_a]\",\"$_POST[ciudad_a]\",\"$_POST[provincia_a]\",\" $_POST[direccion_a]\",\" $_POST[sexo_a]\",\" $_POST[telefono]\")";
   
        $verificacion=mysqli_query($con,"select* from alumnos where rut_a='$_POST[rut_a]'");
        if(mysqli_num_rows($verificacion)>0){
            echo '<script>
            alert("El Rut ya existe");
            window.history.go(-1)
            </script>';
            exit;
        }
        
if (mysqli_query($con, $sql)) {
      echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($con);
}
mysqli_close($con);

    

   
?>