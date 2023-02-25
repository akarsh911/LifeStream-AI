<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_get_data.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/php/database_set_data.php');
$hospital = get_hospitals();
$hospital = json_decode($hospital);
$doctors = get_doctors();
$doctors = json_decode($doctors);
$pat_no = $hospital->patient_count;
$doc_no = $doctors->count;
$ratio = $pat_no / $doc_no;
$c = 0;
for ($i = 0; $i < (int)$hospital->count; $i++) {
    $doc_ass = round(((int)$hospital->$i->patients) / $ratio);
    $hospital->$i->doctors = $doc_ass;
    for ($j = 0; $j < $doc_ass; $j++) {
        $doctors->$c->hospital_id = $hospital->$i->s_no;
        $c++;
    }
}
$doctors = json_encode($doctors);
$hospital = json_encode($hospital);
echo "<script> localStorage.setItem('doctors_assigned_data', `" . $doctors . "`);</script>";
echo "<script> localStorage.setItem('hospital_assigned_data', `" . $hospital . "`);</script>";
echo '<script>window.onload = (event) => {location.replace("../html/doctor_allocation.html")};</script>';