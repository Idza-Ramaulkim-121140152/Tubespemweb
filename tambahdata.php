<?php
include 'koneksi.php';

session_start();

$dataHandler = new PariwisataDataHandler($conn);

$nama = $_POST['nama'];
$detail = $_POST['detail'];
$alamat = $_POST['alamat'];
$jenis = $_POST['jenis'];
$fasilitas = $_POST['fasilitas'];
$rating = $_POST['rating'];

$jenis_browser = $_SERVER['HTTP_USER_AGENT'];

$alamat_ip = $_SERVER['REMOTE_ADDR'];

$dataHandler->tambahData($nama, $detail, $alamat, $jenis, $fasilitas, $rating, $_FILES["foto"], $jenis_browser, $alamat_ip);

$_SESSION['last_action'] = time();

$conn->close();
?>
