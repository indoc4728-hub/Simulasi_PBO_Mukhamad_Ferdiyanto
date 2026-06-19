<?php

require_once "koneksi/database.php";
require_once "classes/Pendaftaran.php";
require_once "classes/PendaftaranReguler.php";
require_once "classes/PendaftaranPrestasi.php";
require_once "classes/PendaftaranKedinasan.php";

// Object untuk memanggil method query
$reguler = new PendaftaranReguler([
    'id_pendaftaran' => '',
    'nama_calon' => '',
    'asal_sekolah' => '',
    'nilai_ujian' => '',
    'biaya_pendaftaran_dasar' => 0,
    'pilihan_prodi' => '',
    'lokasi_kampus' => ''
]);

$prestasi = new PendaftaranPrestasi([
    'id_pendaftaran' => '',
    'nama_calon' => '',
    'asal_sekolah' => '',
    'nilai_ujian' => '',
    'biaya_pendaftaran_dasar' => 0,
    'jenis_prestasi' => '',
    'tingkat_prestasi' => ''
]);

$kedinasan = new PendaftaranKedinasan([
    'id_pendaftaran' => '',
    'nama_calon' => '',
    'asal_sekolah' => '',
    'nilai_ujian' => '',
    'biaya_pendaftaran_dasar' => 0,
    'sk_ikatan_dinas' => '',
    'instansi_sponsor' => ''
]);

$dataReguler = $reguler->getDaftarReguler($db);
$dataPrestasi = $prestasi->getDaftarPrestasi($db);
$dataKedinasan = $kedinasan->getDaftarKedinasan($db);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Sistem Manajemen PMB</title>

    <style>

        body{
            font-family: Arial, sans-serif;
            margin:20px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-bottom:30px;
        }

        table, th, td{
            border:1px solid black;
        }

        th, td{
            padding:8px;
        }

        h1{
            text-align:center;
        }

    </style>

</head>

<body>

<h1>Sistem Manajemen Pendaftaran Mahasiswa Baru</h1>

<h2>Jalur Reguler</h2>

<table>

<tr>
    <th>ID</th>
    <th>Nama Calon</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Informasi Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php
while($row = $dataReguler->fetch_assoc()){

    $reguler = new PendaftaranReguler($row);
?>

<tr>

<td><?= $row['id_pendaftaran']; ?></td>
<td><?= $row['nama_calon']; ?></td>
<td><?= $row['asal_sekolah']; ?></td>
<td><?= $row['nilai_ujian']; ?></td>

<td><?= $reguler->tampilkanInfoJalur(); ?></td>

<td>
Rp <?= number_format($reguler->hitungTotalBiaya(),0,",","."); ?>
</td>

</tr>

<?php } ?>

</table>



<h2>Jalur Prestasi</h2>

<table>

<tr>
    <th>ID</th>
    <th>Nama Calon</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Informasi Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php
while($row = $dataPrestasi->fetch_assoc()){

    $prestasi = new PendaftaranPrestasi($row);
?>

<tr>

<td><?= $row['id_pendaftaran']; ?></td>
<td><?= $row['nama_calon']; ?></td>
<td><?= $row['asal_sekolah']; ?></td>
<td><?= $row['nilai_ujian']; ?></td>

<td><?= $prestasi->tampilkanInfoJalur(); ?></td>

<td>
Rp <?= number_format($prestasi->hitungTotalBiaya(),0,",","."); ?>
</td>

</tr>

<?php } ?>

</table>



<h2>Jalur Kedinasan</h2>

<table>

<tr>
    <th>ID</th>
    <th>Nama Calon</th>
    <th>Asal Sekolah</th>
    <th>Nilai Ujian</th>
    <th>Informasi Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php
while($row = $dataKedinasan->fetch_assoc()){

    $kedinasan = new PendaftaranKedinasan($row);
?>

<tr>

<td><?= $row['id_pendaftaran']; ?></td>
<td><?= $row['nama_calon']; ?></td>
<td><?= $row['asal_sekolah']; ?></td>
<td><?= $row['nilai_ujian']; ?></td>

<td><?= $kedinasan->tampilkanInfoJalur(); ?></td>

<td>
Rp <?= number_format($kedinasan->hitungTotalBiaya(),0,",","."); ?>
</td>

</tr>

<?php } ?>

</table>

</body>
</html>