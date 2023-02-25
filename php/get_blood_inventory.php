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
    $hospital->$i->OP = round($dis_ratio * $blood[0]->OP);
    $hospital->$i->OM = round($dis_ratio * $blood[0]->OM);
    $hospital->$i->AP = round($dis_ratio * $blood[0]->AP);
    $hospital->$i->AM = round($dis_ratio * $blood[0]->AM);
    $hospital->$i->BP = round($dis_ratio * $blood[0]->BP);
    $hospital->$i->BM = round($dis_ratio * $blood[0]->BM);
    $hospital->$i->ABP = round($dis_ratio * $blood[0]->ABP);
    $hospital->$i->ABM = round($dis_ratio * $blood[0]->ABM);
}
$blood = json_encode($blood);
$hospital = json_encode($hospital);
echo $blood;
echo $hospital;
