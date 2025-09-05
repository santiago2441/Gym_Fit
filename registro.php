<?php 
require_once("db/conexion.php"); 
$db = new Database();
$con = $db->conectar();
session_start();

// Procesamiento del formulario
if (isset($_POST["MM_insert"]) && $_POST["MM_insert"] == "formreg") {
    $documento = $_POST['doc'];
    $nombre = $_POST['first_name'];
    $apellido = $_POST['last_name'];
    $edad = $_POST['edad'];
    $estatura = $_POST['estatura'] / 100; // Convertir cm a metros
    $peso = $_POST['peso'];
    $fecha_nac = $_POST['fecha_na'];
    $telefono = $_POST['telefono'];
    $correo = $_POST['correo'];
    $rol_id = $_POST['rol'];
    $genero = $_POST['genero'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $estado_id = 2; // Estado inactivo por defecto

    // Validar si ya existe el documento
    $check = $con->prepare("SELECT * FROM usuario WHERE documento = ?");
    $check->execute([$documento]);
    $estat = $_POST['estat'] / 100; // Convertir altura a metros
    
    if ($check->fetch()) {
        echo "<script>alert('El documento ya existe'); window.location='registro.php';</script>";
    } elseif (
        empty($documento) || empty($nombre) || empty($apellido) || empty($edad) ||
        empty($fecha_nac) || empty($telefono) || empty($correo) || empty($rol_id) || 
        empty($genero) || empty($_POST['password'])
    ) {
        echo "<script>alert('Hay campos vacíos'); window.location='registro.php';</script>";
    } else {
        $insert = $con->prepare("INSERT INTO usuario 
            (documento, nombres, apellidos, edad, estatura, peso, fecha_naci, telefono, correo, password, id_rol, id_genero, id_estado) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        $insert->execute([
            $documento, $nombre, $apellido, $edad, $estatura, $peso, 
            $fecha_nac, $telefono, $correo, $password, $rol_id, $genero, $estado_id
        ]);

        echo "<script>alert('Usuario registrado exitosamente. Serás redirigido al login.'); window.location='login.php';</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body { padding: 30px; background-color: #f5f5f5; }
        .container { max-width: 600px; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Formulario de Registro</h2>
        <form method="POST" action="registro.php" autocomplete="off">
            <div class="form-group">
                <label>Documento</label>
                <input type="number" name="doc" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Nombres</label>
                <input type="text" name="first_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Apellidos</label>
                <input type="text" name="last_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Edad</label>
                <input type="number" name="edad" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Estatura (cm)</label>
                <input type="number" step="0.01" name="estatura" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Peso (kg)</label>
                <input type="number" step="0.01" name="peso" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Fecha de Nacimiento</label>
                <input type="date" name="fecha_na" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Teléfono</label>
                <input type="tel" name="telefono" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Correo electrónico</label>
                <input type="email" name="correo" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Contraseña</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Género</label><br>
                <label><input type="radio" name="genero" value="1" required> Masculino</label>
                <label><input type="radio" name="genero" value="2"> Femenino</label>
            </div>

            <!-- Campos ocultos -->
            <input type="hidden" name="rol" value="3"> <!-- Rol cliente -->
            <input type="hidden" name="MM_insert" value="formreg">

            <button type="submit" class="btn btn-primary btn-block">Registrar Usuario</button>
            <a href="login.php" class="btn btn-secondary btn-block mt-2">Volver al Login</a>
        </form>
    </div>
</body>
</html>
