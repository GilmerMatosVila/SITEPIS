<?php
include_once "../Controller/session.php";
$session = new Session();

if (empty($_SESSION['nombres'])) {

    $session->redirect();
}
include_once "./layout/header.php";
?>
<div class="card">
    <h2><strong> Bienvenida</strong> <?php echo $_SESSION['nombres'] ?></h2>
</div>
<div class="row" id="bodyInfoTopico">
    <!-- card1 start -->
    <!--<div class="col-md-6 col-xl-4">
        <div class="card widget-card-1">
            <div class="card-block-small">
                <i class="icofont icofont-pie-chart bg-c-blue card1-icon"></i>
                <span class="text-c-blue f-w-600">Pacientes</span>
                <h4>49/50GB</h4>
                <div>
                    <span class="f-left m-t-10 text-muted">
                        <i class="text-c-blue f-16 icofont icofont-warning m-r-10"></i>Total
                    </span>
                </div>
            </div>
        </div>
    </div>-->
    <!-- card1 end -->
    <!-- card1 start -->
    <!--<div class="col-md-6 col-xl-4">
        <div class="card widget-card-1">
            <div class="card-block-small">
                <i class="icofont icofont-ui-home bg-c-pink card1-icon"></i>
                <span class="text-c-pink f-w-600">Stock</span>
                <h4>$23,589</h4>
                <div>
                    <span class="f-left m-t-10 text-muted">
                        <i class="text-c-pink f-16 icofont icofont-calendar m-r-10"></i>Medicamentos
                    </span>
                </div>
            </div>
        </div>
    </div>-->
    <!-- card1 end -->
    <!-- card1 start -->
    <!--<div class="col-md-6 col-xl-4">
        <div class="card widget-card-1">
            <div class="card-block-small">
                <i class="icofont icofont-warning-alt bg-c-green card1-icon"></i>
                <span class="text-c-green f-w-600">Atenciones</span>
                <h4>45</h4>
                <div>
                    <span class="f-left m-t-10 text-muted">
                        <i class="text-c-green f-16 icofont icofont-tag m-r-10"></i>Total
                    </span>
                </div>
            </div>
        </div>
    </div>-->
    <!-- card1 end -->
    <!-- card1 start -->
    <!--<div class="col-md-6 col-xl-3">
        <div class="card widget-card-1">
            <div class="card-block-small">
                <i class="icofont icofont-social-twitter bg-c-yellow card1-icon"></i>
                <span class="text-c-yellow f-w-600">Followers</span>
                <h4>+562</h4>
                <div>
                    <span class="f-left m-t-10 text-muted">
                        <i class="text-c-yellow f-16 icofont icofont-refresh m-r-10"></i>Just update
                    </span>
                </div>
            </div>
        </div>
    </div>-->

    

</div>

<?php
include_once "./layout/foother.php";
?>
<script src="./js/index.js"></script>


</body>

</html>