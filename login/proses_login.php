<?php
// mengaktifkan session php
session_start();

// menghubungkan dengan koneksi
include '../config/koneksi.php';

// menangkap data yang dikirim dari form
$username = $_POST['username'];
$password = md5($_POST['password']);

// menyeleksi data user dengan username dan password yang sesuai
$result = mysqli_query($koneksi, "SELECT * FROM petugas where username='$username' and password='$password'");

$cek = mysqli_num_rows($result);

if ($cek > 0) {
    $data = mysqli_fetch_array($result);
    $_SESSION['username'] = $username;
    $_SESSION['nama_petugas'] = $data['nama_petugas'];
    $_SESSION['status'] = "sudah_login";
    $_SESSION['id_petugas'] = $data['id_petugas'];
    header("location:../admin/dashboard.php");
} else {
    header("location:login.php?pesan=gagal login data tidak ditemukan.");
}
