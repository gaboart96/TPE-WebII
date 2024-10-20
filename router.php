<?php
//require_once 'noticias.php';
//require_once 'about.php';

// leemos la accion que viene por parametro
//$action = 'home'; // acción por defecto

if (!empty($_GET['action'])) { // si viene definida la reemplazamos
    $action = $_GET['action'];
}

// parsea la accion Ej: dev/juan --> ['dev', juan]
$params = explode('/', $action);

// determina que camino seguir según la acción
switch ($params[0]) {
    case 'home':
        //showHome();
        break;
    case 'noticia':
        //showNoticia($params[1]);
        break;
    case 'about':
        $id = null;
        if (isset($params[1])) $id = $params[1];
        //showAbout($id);
        break;
    default:
        echo('404 Page not found');
        break;
}
?>
