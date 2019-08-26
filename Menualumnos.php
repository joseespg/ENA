
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>
	<body>
<form   action="registrar.php" method="post">
	<h1>Datos de ingreso alumnos</h1>
  <table width="355" border="0">
  <tbody>
    <tr>
      <td width="180">
        <input type="text" name="rut_a" id="rut_a" required placeholder="Rut Alumno: " pattern="^(\d{2}\.\d{3}\.\d{3}-)([a-zA-Z]{1}$|\d{1}$)"></td>
      <td width="159"><input type="text" name="nombre_a" id="nombre_a" required placeholder="Nombres:" pattern="^[A-Za-z]{0,15}(\s)[A-Za-z]{0,15}$"></td>
		
    </tr>
    <tr>
      <td><input type="text" name="apellidos_a" id="apellido_a"required placeholder="Apellidos:" pattern="^[A-Za-z]{0,15}(\s)[A-Za-z]{0,15}$"></td>
      <td><input type="date" name="fechanac_a" id="fechanac_a" required pattern="^([0-2][0-9]|3[0-1])(\/|-|.)(0[1-9]|1[0-2])\2(\d{4})$" ></td>
		
    </tr>
    <tr>
      <td><input type="text" name="edad_a" id="edad_a"required placeholder="Edad:" pattern="^[0-9]{1,2}$"></td>
      <td><input type="text" name="pais_a" id="pais_a" placeholder="País:" required pattern="(^[A-Za-z]{0,30}).([A-Za-z]{0,30})$"></td>
		
		
        <input type="button" onclick="window.location.href='consultar.php'" value="Consultar">
		<button type="button" onclick="alert('Datos Modificados')">Modificar Datos</button>
		<button type="button" onclick="alert('Descargando')">Descargar</button>
    </tr>
    <tr>
      <td><input type="text" name="ciudad_a" id="ciudad_a" placeholder="Ciudad:"  required pattern="(^[A-Za-z]{0,30}).([A-Za-z]{0,30})$"></td> 
      <td><input type="text" name="provincia_a" id="provincia_a" placeholder="Provincia:"></td>
    </tr>
    <tr>
      <td><input type="text" name="direccion_a" id="direccion_a" required placeholder="Dirección:" pattern="(^[A-Za-z]{0,30}).([A-Za-z]{0,30}.[A-Za-z]{0,30}.[A-Za-z]{0,30})$"></td>
      <td><input type="text" name="telefono" id="telefono" required placeholder="Teléfono:" pattern="^[0-9]{9,10}$"></td>
    </tr>
    <tr>
      <td><select id="sexo_a" required name="sexo_a">
               <option >Sexo</option>
               <option Value="femenino">Femenino</option>
          <option Value ="masculino">Masculino</option></select></td>
     
    </tr>
  </tbody>
</table>
	<br>
	<br>
	
	<br>
	<br>
	<br>
  <input type="button" name="button_regresar" id="button_regresar" value="Regresar" >
  <button type="submit" >Guardar</button>
</form>

</body>
</html>
