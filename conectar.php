<?php
$host="localhost";
$user="root";
$password="";
$db="registro_01";
$con = mysqli_connect($host,$user,$password,$db);


  
 
     
  $username=$_POST['username'];
  $password=$_POST['password'];
     
     
 
  $sql= "select usuario_adm, password_adm from administradores where usuario_adm='".$username."' and password_adm='".$password."';";
  $query = mysqli_query($con,$sql);
  $counter=mysqli_num_rows($query);
   
     if ($counter==1){
         echo "<script>alert(\"INICIANDO SESION\");
         window.location='Menualumnos.php';
         </script>";
         
     } else {
        echo '<script>alert("Datos erroneos");
        window.history.go(-1)
        </script>
        ';
         exit;
     }
  
 





?>