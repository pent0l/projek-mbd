<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../config/koneksi.php";
error_reporting();
$id = $_POST['id_jns_seleksi'];
$nama = $_POST['nama_seleksi'];

$update_data = mysqli_query($koneksi, "UPDATE jns_seleksi SET nama_seleksi='$nama' WHERE id_jns_seleksi=$id");
if ($update_data){
    header('location:data_jns_seleksi.php?pesan=Data Berhasil Di Ubah');
}else{
    //echo('ERROR' . mysqli_error($koneksi));
    header('location:data_jns_seleksi.php?pesan=Data Berhasil Di Ubah');
}