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

// ambil datadi URL
$id_merek_barang = $_GET["id_merek_barang"];

// query data mahasiswa berdasarkan id
$merek_barang = query("SELECT * FROM merek_barang WHERE id_merek_barang = '$id_merek_barang' ")[0];

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


<h1 style="text-align: center;">Ubah Data Merek Barang</h1>

<form action="" method="post">
    <input type="hidden" id="id_merek_barang" name="id_merek_barang" value="<?= $merek_barang["id_merek_barang"]; ?>">
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_merek_barang">Merek Barang</label>
        <input type="text" class="form-control" id="nama_merek_barang" name="nama_merek_barang" value="<?= $merek_barang["nama_merek_barang"]; ?>" required>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>