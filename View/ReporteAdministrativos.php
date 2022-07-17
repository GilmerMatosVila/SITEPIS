<?php 
    include("cn.php");
    $atencion_administrativos = "SELECT * FROM atencion_administrativo";
    header("Content-Type: application/vnd.ms-excel; charset=iso-8859-1");
    header("content-disposition: attachment; filename=Reporte-Atenciòn-Administrativos.xls");

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



   