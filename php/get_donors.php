<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_set_data.php');

if (isset($_GET["group"])) {
    if ($_GET["group"] != "") {
        $group = trim($_GET["group"], '\'"');
        $resp = get_donors_filter($group);
        echo $resp;
    } else {
        $resp = get_donors();
        echo $resp;
    }
} else {
    $resp = get_donors();
    echo $resp;
}