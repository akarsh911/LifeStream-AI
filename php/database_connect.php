<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "life_stream_ai";
$conn = new mysqli($servername, $username, $password);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "CREATE DATABASE IF NOT EXISTS $dbname";
if ($conn->query($sql) === TRUE) {
    $conn->select_db($dbname);
    $sql = "CREATE TABLE IF NOT EXISTS users (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        f_name VARCHAR(30) NOT NULL,
        l_name VARCHAR(30) NOT NULL,
        username VARCHAR(30) NOT NULL,
        ph_no VARCHAR(30) NOT NULL,
        email VARCHAR(50) NOT NULL,
        psw_hash VARCHAR(255) NOT NULL,
        user_state INT(1) NOT NULL,
        dashboard_type INT(1) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS donors_list (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        age VARCHAR(30) NOT NULL,
        blood_group VARCHAR(30) NOT NULL,
        ph_no VARCHAR(30) NOT NULL,
        gender VARCHAR(30) NOT NULL,
        last_donation_date VARCHAR(50) NOT NULL,
        times_donated INT(3) NOT NULL,
        probable_donor INT(1) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS hospitals_list (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        patients VARCHAR(30) NOT NULL,
        doctors VARCHAR(30) NOT NULL,
        ph_no VARCHAR(30) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS doctors_list (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        email VARCHAR(250) NOT NULL,
        ph_no VARCHAR(30) NOT NULL,
        hospital_id VARCHAR(30) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS blood_distribution (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        population VARCHAR(30) NOT NULL,
        OP VARCHAR(30) NOT NULL,
        OM VARCHAR(30) NOT NULL,
        BP VARCHAR(30) NOT NULL,
        BM VARCHAR(30) NOT NULL,
        AP VARCHAR(30) NOT NULL,
        AM VARCHAR(30) NOT NULL,
        ABP VARCHAR(30) NOT NULL,
        ABM VARCHAR(30) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS blood_inventory (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        population VARCHAR(30) NOT NULL,
        OP VARCHAR(30) NOT NULL,
        OM VARCHAR(30) NOT NULL,
        BP VARCHAR(30) NOT NULL,
        BM VARCHAR(30) NOT NULL,
        AP VARCHAR(30) NOT NULL,
        AM VARCHAR(30) NOT NULL,
        ABP VARCHAR(30) NOT NULL,
        ABM VARCHAR(30) NOT NULL
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $sql = "CREATE TABLE IF NOT EXISTS ambulance_locations (
        s_no INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        van_number VARCHAR(30) NOT NULL,
        lat VARCHAR(30) NOT NULL,
        lon VARCHAR(30) NOT NULL 
    )";
    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error creating table: " . $conn->error;
    }
} else {
    echo "Error creating database: " . $conn->error;
}

$conn->close();
function openCon()
{
    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = "";
    $db = "life_stream_ai";
    $conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die("Connect failed: %s\n" . $conn->error);
    return $conn;
}
function closeCon($conn)
{
    $conn->close();
}
