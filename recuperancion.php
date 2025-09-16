<?php
require_once("../db/conexion.php");
$db = new Database();
$con = $db->conectar();
session_start();

if(isset($_POST["inicio"])){
    $email = $_POST["email"];

    // Verificar si el correo electrónico está registrado en la base de datos
    $stmt = $con->prepare("SELECT * FROM usuario WHERE correo = :email");
    $stmt->bindParam(":email", $email);
    $stmt->execute();
    $fila = $stmt->fetch();

    if($fila){
        // Generar el enlace de cambio de contraseña
        $enlace = "http://localhost/gym_fit/controller/nuevacontra.php";

        // Configuraciones del correo
        $subject = "Recuperación de contraseña";
        $message = 'Hola, has solicitado cambiar tu contraseña. Haz clic en el siguiente enlace para continuar: <a href="' . $enlace . '">Cambiar contraseña</a>';
        $headers = "From: $email\r\n";
        $headers .= "Reply-To: $email\r\n";
        $headers .= "Content-Type: text/html\r\n";

        // Enviar el correo
        if(mail($email, $subject, $message, $headers)){
            echo '<script>alert ("Se ha enviado un correo con el enlace para cambiar la contraseña..");</script>';
        } else {
            echo '<script>alert ("Ha ocurrido un error al enviar el correo.");</script>';
        }
    } else {
        echo '<script>alert ("El correo electrónico no está registrado.");</script>';
    }
}
?>

<!-- Resto del código HTML -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Recuperar contraseña</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"> 
    <link rel="stylesheet" href="../css/login.css">  
</head>
<body>
    <div class="login-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="bg-white shadow rounded">
                        <div class="row">
                            <div class="col-md-7 pe-0">
                                <div class="form-left h-100 py-5 px-5">
                                    <form method="POST" name="form1" id="form1" autocomplete="off" class="row g-4" action="" >
                                        <h3 class="mb-3">VALIDACION DE USUARIO</h3>
                                        <div class="col-12">
                                            <label>EMAIL<span class="text-danger">*</span></label>
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="bi bi-envelope-fill"></i></div>
                                                <input type="email" name="email" id="email" class="form-control" placeholder="Digite su correo electrónico" required>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <input type="submit" class="btn btn-warning px-5" name="inicio" id="inicio" value="Validar">
                                            <a href="../login.php" class="btn btn-warning px-5">Volver</a>  
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-5 ps-0 d-none d-md-block">
                                <div class="form-right h-100 bg-dark text-white text-center pt-2">
                                    <i class="">Z&#128293;NA ES 8/67</i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // <!-- FUNCION DE JAVASCRIPT QUE PERMITE INGRESAR SOLO EL NUMERO VALORES REQUERIDOS DE ACUERDO A LA LONGITUD MAXLENGTH DEL CAMPO -->
        function maxlengthNumber(obj) {
            if (obj.value.length > obj.maxLength) {
                obj.value = obj.value.slice(0, obj.maxLength);
                alert("Debe ingresar solo el número de dígitos requeridos");
            }
        }
    </script>
</body>
</html>
