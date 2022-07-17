<?php 
    include("cn.php");
    $atencion_estudiante = "SELECT * FROM atencion_estudiante";
    header("Content-Type: application/vnd.ms-excel; charset=iso-8859-1");
    header("content-disposition: attachment; filename=Reporte-Atenciòn-Estudiantes.xls");
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

	