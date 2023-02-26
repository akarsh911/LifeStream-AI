<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_set_data.php');
$hospital = get_hospitals();
$hospital = json_decode($hospital);
$blood = get_blood_distribution();
$blood = json_decode($blood);

$pat_no = $hospital->patient_count;
$c = 0;
for ($i = 0; $i < $hospital->count; $i++) {
    $dis_ratio = ($hospital->$i->patients) / $pat_no;
    $hospital->$i->OP = round($dis_ratio * $blood->{"0"}->OP) / 10000;
    $hospital->$i->OM = round($dis_ratio * $blood->{"0"}->OM) / 10000;
    $hospital->$i->AP = round($dis_ratio * $blood->{"0"}->AP) / 10000;
    $hospital->$i->AM = round($dis_ratio * $blood->{"0"}->AM) / 10000;
    $hospital->$i->BP = round($dis_ratio * $blood->{"0"}->BP) / 10000;
    $hospital->$i->BM = round($dis_ratio * $blood->{"0"}->BM) / 10000;
    $hospital->$i->ABP = round($dis_ratio * $blood->{"0"}->ABP) / 10000;
    $hospital->$i->ABM = round($dis_ratio * $blood->{"0"}->ABM) / 10000;
}
$blood = json_encode($blood);
$hospital = json_encode($hospital);
echo $blood;
echo $hospital;
echo "<script> localStorage.setItem('blood_inventory', `" . $blood . "`);</script>";
echo "<script> localStorage.setItem('hospital_blood_distribution', `" . $hospital . "`);</script>";
echo '<script>window.onload = (event) => {location.replace("../html/predict_blood_requirements.html")};</script>';
