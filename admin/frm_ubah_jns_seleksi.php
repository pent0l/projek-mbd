<?php
include "../layout/header.php";
include "../config/koneksi.php";
$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM jns_seleksi WHERE id_jns_seleksi=$id");
$rs = mysqli_fetch_assoc($query);
?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Form Jenis Seleksi</h1>
    </div>
    <div class="table-responsive">
        <form action="simpan_ubah_jns_seleksi.php" method="POST">
            <div class="col-6">
                <div class="mb-3">
                    <label for="exampleFormControlInputl" class="form-label">Nama Seleksi</label>
                    <input class="form-control" name="nama_seleksi" value="<?= $rs['nama_seleksi']; ?>">
                    <input type="hidden" name="id_jns_seleksi" value="<?= $rs['id_jns_seleksi']; ?>">
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-sm btn-primary">Simpan</button>
                </div>

            </div>

        </form>

    </div>
</main>
<?php
include "../layout/footer.php";
?>