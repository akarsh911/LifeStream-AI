<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_set_data.php');
$hospital = get_hospitals();
$hospital = json_decode($hospital);
$blood = get_blood_distribution();
$blood = json_decode($blood);
$pat_no = $hospital->patient_count;
$doc_no = $doctors->count;
$ratio = $pat_no / $doc_no;
$c = 0;
for ($i = 0; $i < $hospital->count; $i++) {
    $doc_ass = round($ratio * $hospital->$i->patients);
    $hospital->$i->doctors = $doc_ass;
    for ($j = 0; $j < $doc_ass; $j++) {
        $doctors->$c->hospital_id->$hospital->$i->s_no;
    }
}
$doctors = json_encode($doctors);
$hospital = json_encode($hospital);
echo $doctors;
echo $hospital;