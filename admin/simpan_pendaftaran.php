<?php
session_start();
if ($_SESSION['status'] != "sudah_login"){
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../config/koneksi.php";

$nama = $_POST['nama_lengkap'];
$tmp_lahir = $_POST['tmpt_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$alamat = $_POST['alamat_rumah'];
$no_tlp = $_POST['no_tlp'];
$nama_ibu = $_POST['nama_ibu'];
$nama_ayah = $_POST['nama_ayah'];
$pekerjaan = $_POST['pekerjaan_ayah'];
$thn_akademik = $_POST['thn_pembelajaran'];
$petugas = $_SESSION['id_petugas'];

$insert_data = mysqli_query($koneksi, "INSERT INTO pendaftaran (nama_lengkap, tmpt_lahir, tgl_lahir, alamat_rumah,
no_tlp, nama_ibu, nama_ayah, pekerjaan_ayah, thn_pembelajaran, id_petugas)
VALUES ('$nama','$tmp_lahir','$tgl_lahir','$alamat','$no_tlp','$nama_ibu','$nama_ayah','$pekerjaan','$thn_akademik','$petugas')");
if ($insert_data){
    header('location:data_pendaftar.php?pesan=Data Berhasil Di Simpan');
} else {
    header('location:data_pendaftar.php?pesan=Data Gagal Di Simpan');
}

