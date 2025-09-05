<?php
require_once("db/conexion.php");
$db = new database();
$inic = $db->conectar();
session_start();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <title>INICIO DE SESIÓN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap y estilos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css">
</head>

<body>

    <div class="login-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="bg-white shadow rounded">
                        <div class="row">
                            <!-- Formulario de inicio de sesión -->
                            <div class="col-md-7 pe-0">
                                <div class="form-left h-100 py-5 px-5">
                                    <form method="POST" name="form1" id="form1" action="controller/inicio.php" autocomplete="off" class="row g-4">
                                        <h3 class="mb-3">INICIAR SESIÓN</h3>

                                        <!-- Documento -->
                                        <div class="col-12">
                                            <label>DOCUMENTO <span class="text-danger">*</span></label>
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
                                                <input type="text" name="documento" minlength="10" maxlength="10" class="form-control" placeholder="Ingrese su documento" required oninput="maxlengthNumber(this);">
                                            </div>
                                        </div>

                                        <!-- Contraseña -->
                                        <div class="col-12">
                                            <label>CONTRASEÑA <span class="text-danger">*</span></label>
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
                                                <input type="password" name="clave" minlength="8" maxlength="15" class="form-control" placeholder="Ingrese su contraseña" required>
                                            </div>
                                        </div>

                                        <!-- Recuperar contraseña -->
                                        <div class="col-sm-6">
                                            <a href="vista/recuperacion.php" class="text-primary">Recuperar contraseña</a>
                                        </div>

                                        <!-- Botones -->
                                        <div class="col-12">
                                            <input type="submit" class="btn btn-warning px-5" name="inicio" id="inicio" value="Validar">
                                            <a href="index.php" class="btn btn-warning px-5">Volver</a>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- Panel derecho -->
                            <div class="col-md-5 ps-0 d-none d-md-block">
                                <div class="form-right h-100 bg-dark text-white text-center pt-2">
                                    <i class="">Z&#128293;NA ES 8/67</i>
                                    <h2 class="fs-2">BIENVENIDOS</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Validación de longitud de documento -->
    <script>
        function maxlengthNumber(obj) {
            if (obj.value.length > obj.maxLength) {
                obj.value = obj.value.slice(0, obj.maxLength);
                alert("Debe ingresar solo el número de dígitos requeridos");
            }
        }
    </script>

</body>
</html>
