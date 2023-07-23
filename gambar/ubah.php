<?php
require "../header.php";
require "fungsi.php";

// ambil datadi URL
$id_gambar = $_GET["id_gambar"];

// query data mahasiswa berdasarkan id
$gambar = query("SELECT * FROM gambar WHERE id_gambar = $id_gambar ")[0];

// cek apakah tombol submit sudah di tekan atau belum
if (isset($_POST["submit"])) {
    var_dump($_POST);
    print_r($_FILES);

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


<h1 style="text-align: center;">Ubah Data Gambar</h1>

<form action="" method="post" enctype="multipart/form-data">
    <input type="hidden" id="id_gambar" name="id_gambar" value="<?= $gambar["id_gambar"]; ?>">
    <input type="hidden" id="nama_gambar_lama" name="nama_gambar_lama" value="<?= $gambar["nama_gambar_lama"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="keterangan_gambar">Keterangan gambar</label>
        <input type="text" class="form-control" id="keterangan_gambar" name="keterangan_gambar" value="<?= $gambar["keterangan_gambar"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_gambar">Gambar</label>
        <input class="form-control" id="nama_gambar" name="nama_gambar" type="file">
        <br>
        <a href="../gambar/<?= $gambar["nama_gambar"]; ?>">
            <img src="../gambar/<?= $gambar["nama_gambar"]; ?>" alt="nama_gambar" width="100%">
        </a>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>