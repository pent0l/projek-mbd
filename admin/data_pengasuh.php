<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
    //melakukan pengalihan
    header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";
$sql = mysqli_query($koneksi, "SELECT * FROM pengasuh");
?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Data Pengasuh</h1>
    </div>
    <?php if (isset($_GET['pesan'])) : ?>
        <div class="alert alert-success" role="alert">
            <?php echo $_GET['pesan']; ?>
        </div>
    <?php endif; ?>

    <a href="frm_tambah_data_pengasuh.php" class="btn btn-sm btn-primary">Tambah Data</a>
    <br><br>
    <div class="table-responsive">
        <table class="table table-striped table-bordered display nowrap" id="example" style="width:100%">
            <thead class="table-light">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Lengkap</th>
                    <th scope="col">Alamat</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Tlp/HP</th>
                    <th scope="col">Kompetensi</th>
                    <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                while ($rs = mysqli_fetch_assoc($sql)) : ?>
                    <tr>
                        <td><?= $no; ?></td>
                        <td><?= $rs['nama_lengkap']; ?></td>
                        <td><?= $rs['alamat']; ?></td>
                        <td><?= $rs['email']; ?></td>
                        <td><?= $rs['no_tlp']; ?></td>
                        <td><?= $rs['kompetensi']; ?></td>
                        <td>
                            <a href="frm_ubah_data_pengasuh.php?id=<?= $rs['id_pengasuh']; ?>" class="btn btn-info btn-sm">Ubah</a>
                            <a href="hapus_data_pengasuh.php?id=<?= $rs['id_pengasuh']; ?>" class="btn btn-danger btn-sm">Hapus</a>
                        </td>
                    </tr>
                <?php
                    $no++;
                endwhile;
                ?>
            </tbody>
        </table>
    </div>

</main>
<?php
include "../layout/footer.php";
?>