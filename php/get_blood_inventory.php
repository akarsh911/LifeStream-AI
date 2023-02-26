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
    echo json_encode($hospital->$i);
    $new_arr = $hospital->$i;
    $hospital->$i->OP = round($dis_ratio * $blood[0]->OP);
    $new_arr->OM = round($dis_ratio * $blood[0]->OM);
    $new_arr->AP = round($dis_ratio * $blood[0]->AP);
    $new_arr->AM = round($dis_ratio * $blood[0]->AM);
    $new_arr->BP = round($dis_ratio * $blood[0]->BP);
    $new_arr->BM = round($dis_ratio * $blood[0]->BM);
    $new_arr->ABP = round($dis_ratio * $blood[0]->ABP);
    $new_arr->ABM = round($dis_ratio * $blood[0]->ABM);
    array_push($hospital->$i, $new_arr);
}
$blood = json_encode($blood);
$hospital = json_encode($hospital);
echo $blood;
echo $hospital;
echo "<script> localStorage.setItem('blood_inventory', `" . $blood . "`);</script>";
echo "<script> localStorage.setItem('hospital_blood_distribution', `" . $hospital . "`);</script>";
