<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');
//require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_set_data.php');
$resp = get_ambulance_location();
echo $resp;
