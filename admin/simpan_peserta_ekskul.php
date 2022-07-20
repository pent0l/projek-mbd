<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../config/koneksi.php";
$id_santri = $_POST['id_santri'];
$id_ekskul = $_POST['id_ekskul'];

$data = array();
for ($i = 0; $i < COUNT($id_santri); $i++){
    $insert_data = mysqli_query($koneksi, "INSERT INTO detail_ekskul(id_ekskul,id_santri) VALUES ('$id_ekskul[$i]','$id_santri[$i]')");
}

if ($insert_data) {
    header('location:data_ekskul.php?pesan=Data Berhasil Di Simpan');
} else {
    header('location:data_ekskul.php?pesan=Data Gagal Di Simpan');
}