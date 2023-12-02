<?php

require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');

$pythonScriptPath = '../python/ambulance/ambulance.py';  
$scriptDirectory = dirname(__FILE__);  
chdir($scriptDirectory);  
$output = shell_exec('python ' . $pythonScriptPath . ' 2>&1');
if ($output === null) {
    // There was an error executing the Python script
    echo "Error executing Python script.";
} else {
    // Process the output if needed
    $data = json_decode($output, true);

    // Get the first 10 coordinates (latitude and longitude)
    $coordinates = array_slice($data, 0, 10);

    // Print the coordinates
    // echo json_encode($coordinates);
    $resp = get_ambulance_location();
    $resp = json_decode($resp, true);
    // echo json_encode($resp);
    for ($i = 0; $i < count($coordinates); $i++) {
        $latitude = $coordinates[$i][0];
        $longitude = $coordinates[$i][1];
        $resp[$i]['lat']=$latitude;
        $resp[$i]['long']=$longitude;
        $resp[$i]['van_number'] = generateVanNumber();
    }
    echo json_encode($resp);
}
function generateVanNumber() {
    $stateCode = 'UP';  
    $districtCode = '32';  
    $categoryCode = 'A'; 
    $year = date('Y'); 
    $randomNumber = rand(1000, 9999);

    $vanNumber = "{$stateCode}-{$districtCode}-{$categoryCode}-{$randomNumber}";

    return $vanNumber;
}
?>
