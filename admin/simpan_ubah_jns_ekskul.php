<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../config/koneksi.php";
error_reporting();
$id = $_POST['id_jns_ekskul'];
$nama = $_POST['nama_ekskul'];

$update_data = mysqli_query($koneksi, "UPDATE jns_ekskul SET nama_ekskul='$nama' WHERE id_jns_ekskul=$id");
if ($update_data) {
    header('location:data_jns_ekskul.php?pesan=Data Berhasil Di Ubah');
} else {
    //echo('ERROR' . mysqli_error($koneksi));
    header('location:data_jns_ekskul.php?pesan=Data Berhasil Di Ubah');
}
