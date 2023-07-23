<?php
require "../header.php";
require "fungsi.php";

// ambil datadi URL
$id_opd = $_GET["id_opd"];

// query data mahasiswa berdasarkan id
$opd = query("SELECT * FROM opd WHERE id_opd = $id_opd ")[0];

// cek apakah tombol submit sudah di tekan atau belum
if (isset($_POST["submit"])) {
    var_dump($_POST);


    // data berhasil di ubah atau tidak
    if (ubah($_POST) > 0) {
        echo "<script>
        alert('data sukses di ubah');
        document.location.href = 'index.php';
        </script>";
    } else {
        echo "<script>
        alert('data gagal di ubah');
        document.location.href = 'index.php';
        </script>";
    }
}
?>


<h1 style="text-align: center;">Ubah Data OPD(Organisasi Perangkat Daerah)</h1>

<form action="" method="post">
    <input type="hidden" id="id_opd" name="id_opd" value="<?= $opd["id_opd"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_opd">Nama OPD</label>
        <input type="text" class="form-control" id="nama_opd" name="nama_opd" value="<?= $opd["nama_opd"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="alamat_opd">Ubah OPD</label>
        <input type="text" class="form-control" id="alamat_opd" name="alamat_opd" value="<?= $opd["alamat_opd"]; ?>" required>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>