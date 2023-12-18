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
    print_r($_FILES);

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

<h1 style="text-align: center;">Tambah Data Barang Sementara</h1>

<form action="" method="post" enctype="multipart/form-data">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Merek Barang</label>
        <div class="input-group">
            <select style="width:100%" class="select2" name="join_merek_barang_sementara" id="join_merek_barang_sementara" required>
                <option value=""></option>
                <?php

                $query = mysqli_query($db, "SELECT * FROM merek_barang");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[id_merek_barang]'>$query2[nama_merek_barang]</option>";
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Jenis Barang</label>
        <div class="input-group">
            <select style="width:100%" class="select2" name="join_jenis_barang_sementara" id="join_jenis_barang_sementara" required>
                <option value=""></option>
                <?php

                $query = mysqli_query($db, "SELECT * FROM jenis_barang");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[id_jenis_barang]'>$query2[nama_jenis_barang]</option>";
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nomor_serial_barang">Nomor Serial Barang</label>
        <input type="text" class="form-control" id="nomor_serial_barang_sementara" name="nomor_serial_barang_sementara" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="status_barang">Status Barang</label>
        <select class="form-select" id="status_barang_sementara" name="status_barang_sementara" required>
            <option value="">---Pilih Status---</option>
            <option value="Normal">Normal</option>
            <option value="Rusak">Rusak</option>
        </select>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Nama OPD</label>
        <div class="input-group">
            <select style="width:100%" class="select2" name="join_opd_sementara" id="join_opd_sementara" required>
                <option value=""></option>
                <?php

                $query = mysqli_query($db, "SELECT * FROM opd");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[id_opd]'>$query2[nama_opd] - $query2[alamat_opd]</option>";
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="detail_lokasi_barang_sementara">Detail Penempatan Barang</label>
        <input type="text" class="form-control" id="detail_lokasi_barang_sementara" name="detail_lokasi_barang_sementara" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="koordinat_barang_sementara">Koordinat Barang</label>
        <input type="text" class="form-control" id="koordinat_barang_sementara" name="koordinat_barang_sementara" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="keterangan_barang_sementara">Keterangan Barang</label>
        <input type="text" class="form-control" id="keterangan_barang_sementara" name="keterangan_barang_sementara" required>
    </div>



    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="gambar_barang_sementara">Gambar Pedukung</label>
        <input type="file" class="form-control" id="gambar_barang_sementara" name="gambar_barang_sementara" onchange="previewImg()">
        <img src="" alt="" class="img-thumbnail img-preview mt-2" width="1000px">
    </div>

    <div class=" offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>

<!-- preview gambar -->
<script>
    function previewImg() {
        const gambar_barang_sementara = document.querySelector('#gambar_barang_sementara');
        const imgPreview = document.querySelector('.img-preview');

        const fileFoto = new FileReader();
        fileFoto.readAsDataURL(gambar_barang_sementara.files[0]);

        fileFoto.onload = function(e) {
            imgPreview.src = e.target.result;
        }
    }
</script>
<?php
require "../footer.php";
?>