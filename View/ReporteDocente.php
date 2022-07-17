<?php 
    include("cn.php");
    $atencion_docente = "SELECT * FROM atencion_docente";
    header("Content-Type: application/vnd.ms-excel; charset=iso-8859-1");
    header("content-disposition: attachment; filename=Reporte-Atencion-Docente.xls");
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
