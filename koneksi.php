<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tubesweb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
class PariwisataDataHandler {
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function tambahData($nama, $detail, $alamat, $jenis, $fasilitas, $rating, $foto, $jenis_browser, $alamat_ip) {
        $target_dir = "img/";
        $target_file = $target_dir . basename($foto["name"]);
        move_uploaded_file($foto["tmp_name"], $target_file);

        $query = $this->conn->prepare("INSERT INTO pariwisata (nama, detail, alamat, jenis, fasilitas, rating, foto, jenis_browser, alamat_ip) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $query->bind_param("sssssssss", $nama,  $detail, $alamat, $jenis, $fasilitas, $rating, $target_file, $jenis_browser, $alamat_ip);
        $query->execute();
        $query->close();
    }

    public function hapusData($id, $alamat_ip) {
        $query = $this->conn->prepare("DELETE FROM pariwisata WHERE id = ? AND alamat_ip = ?");
        $query->bind_param("is", $id, $alamat_ip);
        $query->execute();
        $query->close();
    }
}
?>

