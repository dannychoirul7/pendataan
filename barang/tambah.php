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

<h1 style="text-align: center;">Tambah Data Barang</h1>

<form action="" method="post" enctype="multipart/form-data">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Merek Barang</label>
        <div class="input-group">
            <select class="form-select" name="join_merek_barang" id="join_merek_barang" required>
                <option value=""></option>
                <?php

                $query = mysqli_query($db, "SELECT * FROM merek_barang");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($conn));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[id_merek_barang]'>$query2[nama_merek_barang]</option>";
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="join_jenis_barang">Jenis Barang</label>
        <input type="text" class="form-control" id="join_jenis_barang" name="join_jenis_barang" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nomor_serial_barang">Nomor Serial Barang</label>
        <input type="text" class="form-control" id="nomor_serial_barang" name="nomor_serial_barang" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="status_barang">Status Barang</label>
        <select class="form-select" id="status_barang" name="status_barang" required>
            <option value=""></option>
            <option value="Normal">Normal</option>
            <option value="Rusak">Rusak</option>
        </select>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="join_opd">Nama OPD</label>
        <input type="text" class="form-control" id="join_opd" name="join_opd" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="detail_lokasi_barang">Detail Penempatan Barang</label>
        <input type="text" class="form-control" id="detail_lokasi_barang" name="detail_lokasi_barang" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="koordinat_barang">Koordinat Barang</label>
        <input type="text" class="form-control" id="koordinat_barang" name="koordinat_barang" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="keterangan_barang">Keterangan Barang</label>
        <input type="text" class="form-control" id="keterangan_barang" name="keterangan_barang" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="join_user">Nama User</label>
        <input type="text" class="form-control" id="join_user" name="join_user" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="join_gambar">Gambar Pedukung</label>
        <input type="text" class="form-control" id="join_gambar" name="join_gambar" required>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>