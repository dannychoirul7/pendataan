<?php
require "../header.php";
require "fungsi.php";

// ambil datadi URL
$id_jenis_barang = $_GET["id_jenis_barang"];

// query data mahasiswa berdasarkan id
$jenis_barang = query("SELECT * FROM jenis_barang WHERE id_jenis_barang = $id_jenis_barang ")[0];

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


<h1 style="text-align: center;">Ubah Data Jenis Barang</h1>

<form action="" method="post">
    <input type="hidden" id="id_jenis_barang" name="id_jenis_barang" value="<?= $jenis_barang["id_jenis_barang"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_jenis_barang">Jenis Barang</label>
        <input type="text" class="form-control" id="nama_jenis_barang" name="nama_jenis_barang" value="<?= $jenis_barang["nama_jenis_barang"]; ?>" required>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>