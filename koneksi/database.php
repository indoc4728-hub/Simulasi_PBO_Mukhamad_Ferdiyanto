<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "DB_SIMULASI_PBO_KELAS_NamaLengkap"; // sesuaikan

$db = new mysqli($host, $username, $password, $database);

if ($db->connect_error) {
    die("Koneksi Gagal : " . $db->connect_error);
}

?>