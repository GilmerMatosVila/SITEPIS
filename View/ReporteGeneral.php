<?php 
    include("cn.php");
    $atencion_estudiante = "SELECT * FROM atencion_estudiante";
    header("Content-Type: application/vnd.ms-excel; charset=iso-8859-1");
    header("content-disposition: attachment; filename=Reporte-Atenciòn-General.xls");
    ?>

<table border="0">
    
    <tr>
    <h2>REPORTE DE ATENCION ESTUDIANTE</h2>
        <th style='font-weight:bold; border:1px solid #eee;'>ID ATENCION</th>
        <th style='font-weight:bold; border:1px solid #eee;'>HORA</th>
        <th style='font-weight:bold; border:1px solid #eee;'>ID ESTUDIANTE</th>
        <th style='font-weight:bold; border:1px solid #eee;'>FECHA ATENCION</th>
        <th style='font-weight:bold; border:1px solid #eee;'>DIAGNOSTICO</th>
        <th style='font-weight:bold; border:1px solid #eee;'>TRATAMIENTO</th>
        <th style='font-weight:bold; border:1px solid #eee;'>ID MEDICAMENTO</th>
        <th style='font-weight:bold; border:1px solid #eee;'>CANTIDAD MEDICAMENTO</th>
    </tr>

    <?php $resultado = mysqli_query($conexion, $atencion_estudiante);
    while($row=mysqli_fetch_assoc($resultado)) {    ?>

        <tr>

        <td style='border:1px solid #eee;'> <?php echo $row ["id_atencion"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["hora_add"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["id_estudiante"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["fecha_atencion"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["diagnostico"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["tratamiento"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["idMedicamento"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["cantMedicamento"]; ?></td>

        </tr>

<?php } mysqli_free_result($resultado); ?>
    </table>

	<?php 
    include("cn.php");
    $atencion_docente = "SELECT * FROM atencion_docente";
   
    ?>

    <table border="0">
 

    <tr>
    <h2>REPORTE ATENCION DOCENTE</h2>
        <th style='font-weight:bold; border:1px solid #eee;'>ID ATENCION</th>
        <th style='font-weight:bold; border:1px solid #eee;'>HORA</th>
        <th style='font-weight:bold; border:1px solid #eee;'>ID DOCENTE</th>
        <th style='font-weight:bold; border:1px solid #eee;'>FECHA ATENCION</th>
        <th style='font-weight:bold; border:1px solid #eee;'>DIAGNOSTICO</th>
        <th style='font-weight:bold; border:1px solid #eee;'>TRATAMIENTO</th>
       
    </tr>

    <?php $respuesta = mysqli_query($conexion, $atencion_docente);
    while($row=mysqli_fetch_assoc($respuesta)) {    ?>

        <tr>

        <td style='border:1px solid #eee;'> <?php echo $row ["id_atencion"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["hora_add"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["id_docente"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["fecha_atencion"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["diagnostico"]; ?></td>
        <td style='border:1px solid #eee;'> <?php echo $row ["tratamiento"]; ?></td>
       

        </tr>

<?php } mysqli_free_result($respuesta); ?>

    </table>

    <?php 
    include("cn.php");
    $atencion_administrativos = "SELECT * FROM atencion_administrativo";
    

    ?>

   <table border="0">


 <tr>
                            <h2>REPORTE ATENCION ADMINISTRATIVOS</h2>
							<td style='font-weight:bold; border:1px solid #eee;'>CODIGO DE ATENCION</td>
							<td style='font-weight:bold; border:1px solid #eee;'>HORA</td>
							<td style='font-weight:bold; border:1px solid #eee;'>CODIGO ADMINISTRATIVO</td>
							<td style='font-weight:bold; border:1px solid #eee;'>FECHA DE ATENCION</td>
							<td style='font-weight:bold; border:1px solid #eee;'>DIAGNOSTICO</td>
							<td style='font-weight:bold; border:1px solid #eee;'>TRATAMIENTO</td>
							                                                 
                        </tr>
   

    <?php $consecuencia = mysqli_query($conexion, $atencion_administrativos);
    while($row=mysqli_fetch_assoc($consecuencia )) {    ?>

        <tr>
		                    <td style='border:1px solid #eee;'><?php echo $row ["id_atencion"]; ?></td>
							<td style='border:1px solid #eee;'><?php echo $row ["hora_add"]; ?></td>
                            <td style='border:1px solid #eee;'><?php echo $row ["id_administrativo"]; ?></td>
			 				<td style='border:1px solid #eee;'><?php echo $row ["fecha_atencion"]; ?></td>
			 				<td style='border:1px solid #eee;'><?php echo $row ["diagnostico"]; ?></td>
			 				<td style='border:1px solid #eee;'><?php echo $row ["tratamiento"]; ?></td>
			 					  	  

		</tr>
       

       
<?php } mysqli_free_result($consecuencia); ?>
    </table>

