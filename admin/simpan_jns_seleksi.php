<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../config/koneksi.php";

$nama = $_POST['nama_seleksi'];
$insert_data = mysqli_query($koneksi, "INSERT INTO jns_seleksi (nama_seleksi)
VALUES ('$nama')");
if ($insert_data) {
    header('location:data_jns_seleksi.php?pesan=Data Berhasil Di Simpan');
} else {
    header('location:data_jns_seleksi.php?pesan=Data Gagal Di Simpan');
}
