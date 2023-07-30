<?php
session_start();
if (!isset($_SESSION["login"])) {
    echo "<script>
    alert('Masukkan name dan Password');
    document.location.href ='login.php';
    </script>";
    exit;
}

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
        <label for="keterangan_gambar">Keterangan Gambar</label>
        <input type="text" class="form-control" id="keterangan_gambar" name="keterangan_gambar" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_gambar">Pilih Gambar</label>
        <input type="file" class="form-control" id="nama_gambar" name="nama_gambar" onchange="previewImg()">

        <img src="" alt="" class="img-thumbnail img-preview mt-2" width="1000px">
    </div>
    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>

<!-- preview gambar -->
<script>
    function previewImg() {
        const nama_gambar = document.querySelector('#nama_gambar');
        const imgPreview = document.querySelector('.img-preview');

        const fileFoto = new FileReader();
        fileFoto.readAsDataURL(nama_gambar.files[0]);

        fileFoto.onload = function(e) {
            imgPreview.src = e.target.result;
        }
    }
</script>
<?php
require "../footer.php";
?>