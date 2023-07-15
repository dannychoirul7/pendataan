<?php
require "../header.php";
require "fungsi.php";
// cek apakah tombol submit sudah di tekan atau belum
if (isset($_POST["submit"])) {
    var_dump($_POST);
    // data berhasil di tambahkan atau tidak
    if (tambah($_POST) > 0) {
        echo "<script>
        alert('data masuk');
        document.location.href = 'index.php';
        </script>";
    } else {
        echo "<script>
        alert('data gagal');
        document.location.href = 'tambah.php';
        </script>";
    }
}
?>

<h1 style="text-align: center;">Tambah Data Gambar</h1>

<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_gambar">Pilih Gambar</label>
        <input type="file" class="form-control" id="nama_gambar" name="nama_gambar">
    </div>
    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>