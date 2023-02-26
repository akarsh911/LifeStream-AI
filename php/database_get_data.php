<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "../php/database_connect.php");
function check_user_exists($email)
{
    $conn = openCon();
    $sql = "SELECT f_name FROM users WHERE email='$email' || ph_no='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            return 1;
        }
    } else {
        return 0;
    }
}
function get_user_state($email)
{
    $conn = openCon();
    $sql = "SELECT user_state FROM users WHERE email='$email' || ph_no='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            return $row['user_state'];
        }
    } else {
        return 0;
    }
}

function get_email($email)
{
    $conn = openCon();
    $sql = "SELECT email FROM users WHERE email='$email' || ph_no='$email'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            return $row['email'];
        }
    } else {
        return 0;
    }
}
function get_donors()
{
    $supr_arr = array();
    $conn = openCon();
    $sql = "SELECT * FROM donors_list";
    $result = $conn->query($sql);
    $c = 0;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "name" => $row["name"], "ph_no" =>   $row["ph_no"], "age" => $row["age"], "blood_group" => $row["blood_group"], "gender" => $row["gender"],
                "last_donation_date" => $row["last_donation_date"], "times_donated" => $row["times_donated"], "probable_donor" => $row["probable_donor"],
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_donors_filter($group)
{
    $supr_arr = array();
    $conn = openCon();
    $sql = "SELECT * FROM donors_list WHERE blood_group='$group' ";
    $result = $conn->query($sql);
    $c = 0;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "name" => $row["name"], "ph_no" =>   $row["ph_no"], "age" => $row["age"], "blood_group" => $row["blood_group"], "gender" => $row["gender"],
                "last_donation_date" => $row["last_donation_date"], "times_donated" => $row["times_donated"], "probable_donor" => $row["probable_donor"],
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_doctors()
{
    $conn = openCon();
    $sql = "SELECT * FROM doctors_list";
    $c = 0;
    $supr_arr = array();
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "name" => $row["name"], "ph_no" =>   $row["ph_no"],
                "email" => $row["email"], "hospital_id" => $row["hospital_id"], "url" => $row["url"], 
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_hospitals()
{
    $conn = openCon();
    $c = 0;
    $supr_arr = array();
    $patients = 0;
    $sql = "SELECT * FROM hospitals_list";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "s_no" => $row["s_no"], "name" => $row["name"], "patients" =>   $row["patients"],
                "doctors" => $row["doctors"], "ph_no" => $row["ph_no"], "url" => $row["url"],"OP"=>"0","OM"=>"0","AP"=>"0","AM"=>"0","BP"=>"0","BM"=>"0","ABP"=>"0","ABM"=>"0"
            );
            $patients += $row["patients"];
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $supr_arr["patient_count"] = $patients;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_blood_distribution()
{
    $conn = openCon();
    $c = 0;
    $supr_arr = array();
    $patients = 0;
    $sql = "SELECT * FROM  blood_distribution";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "name" => $row["name"],
                "population" => $row["population"], "AP" => $row["AP"], "AM" => $row["AM"], "BP" =>   $row["BM"],
                "OP" => $row["OP"], "OM" => $row["OM"], "ABP" => $row["ABP"],
                "ABM" => $row["ABM"]
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_blood_inventory()
{
    $conn = openCon();
    $c = 0;
    $supr_arr = array();
    $patients = 0;
    $sql = "SELECT * FROM  blood_inventory";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "name" => $row["name"],
                "population" => $row["population"], "AP" => $row["AP"], "AM" => $row["AM"], "BP" =>   $row["BM"],
                "OP" => $row["OP"], "OM" => $row["OM"], "ABP" => $row["ABP"],
                "ABM" => $row["ABM"]
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}
function get_ambulance_location()
{
    $conn = openCon();
    $c = 0;
    $supr_arr = array();
    $patients = 0;
    $sql = "SELECT * FROM  blood_inventory";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $arr = array(
                "van_number" => $row["van_number"],
                "lat" => $row["lat"],
                "long" => $row["long"]
            );
            $supr_arr[$c++] = $arr;
        }
        $supr_arr["count"] = $c;
        $json = json_encode($supr_arr);
        return $json;
    } else {
        return "nf";
    }
}