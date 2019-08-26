<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Datos Personales</title>
    <link rel="stylesheet" type="text/css" href="css/Alumno.css">
    </head>
  <script type="text/javascript">
        function Salida(){
        window.location.href="Menualumnos.php";
        }
        
    </script> 
    <style type="text/css">
    @media print {
            #botonimprimir, #salir, #btnreset ,#btnconsultar,#cedula,#cedulatxt,#imprimir{
                display: none;
            }
        }
    
    </style>
    <body>
    <center>
       <form ACTION="<?php $_SERVER['PHP_SELF']?>" method="POST">

           <div id ="titulo">Datos Personales</div>
        
           <label id="rut">Cedula(Rut)</label>
           <input id="rut_a" name="rut_a" type="text" pattern="^(\d{2}\.\d{3}\.\d{3}-)([a-zA-Z]{1}$|\d{1}$)"placeholder="xx.xxx.xxx-x" required> 
           
           <input type="submit" id="btnconsultar" name="submit" value="Consulta">
           <input type="button" id="salir" value="Salir" onclick="window.location.href='../Alumno.php';">
           <input type="button" id="imprimir"value="Imprimir" onclick="window.print()">
            </form>
        </center>
        <?php
$host="localhost";
$user="root";
$password="";
$db="registro_01";
$con = mysqli_connect($host,$user,$password,$db);

if(isset($_POST['submit'])){
    if(!empty($_POST)){
        if($_POST["rut_a"]!=""){
            $rut_a=($_POST["rut_a"]);
            $select="select * from alumnos where (rut_a=\"$rut_a\")";
            $query=$con->query($select);
            if($r=$query->fetch_array()){
                echo "<center>";
                echo "<br>";
                    
                echo "Rut: " . $r["rut_a"];
                echo "<br>";
                echo "Nombre: " . $r["nombre_a"];
                echo "<br>";
                echo "Apellidos: " . $r["apellidos_a"];
                echo "<br>";
                echo "Fecha de Nacimiento: " . $r["fechanac_a"];
                echo "<br>";
                echo "Edad: " . $r["edad_a"];
                echo "<br>";
                echo "Pais: " . $r["pais_a"];
                echo "<br>";
                echo "Ciudad: " . $r["ciudad_a"];
                echo "<br>";
                echo "Provincia: " . $r["provincia_a"];
                echo "<br>";
                echo "Dirección " . $r["direccion_a"];
                echo "<br>";
                echo "Telefono: " . $r["telefono"];
                echo "<br>";
                echo "Sexo: " . $r["sexo_a"];
                echo "<br>";
                
                
            }
        }
    }
}



?>
    </body>
</html>

