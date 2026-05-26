<?php
function conectarBD() {
    $host = 'localhost'; // Cambiar al servidor stonebraker.ing.uc.cl si se quiere usar el servidor remoto
    $dbname = ''; // usuariouc.e3
    $usuario = ''; // usuariouc.e3
    $clave = ''; // Número de alumno

    try {
        $db = new PDO("pgsql:host=$host;dbname=$dbname", $usuario, $clave);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
    } catch (PDOException $e) {
        echo "Error de conexión: " . $e->getMessage();
        exit();
    }
}
?>
