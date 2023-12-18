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
$id_barang_sementara = $_GET["id_barang_sementara"];

// query data mahasiswa berdasarkan id
$barang_sementara = query("SELECT * FROM sementara WHERE id_barang_sementara = '$id_barang_sementara' ")[0];

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
        document.location.href = 'ubah.php';
        </script>";
    }
}
?>

<h1 style="text-align: center;">Ubah Data Barang Sementara</h1>

<form action="" method="post" enctype="multipart/form-data">
    <input type="hidden" id="id_barang_sementara" name="id_barang_sementara" value="<?= $barang_sementara["id_barang_sementara"]; ?>">
    <input type="hidden" id="id_barang_sementara" name="gambar_barang_lama" value="<?= $barang_sementara["gambar_barang_sementara"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Merek Barang</label>
        <div class="input-group">
            <select id="join_merek_barang_sementara" name="join_merek_barang_sementara" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_merek_barang_sementara,id_barang_sementara,nama_merek_barang FROM sementara JOIN merek_barang ON join_merek_barang_sementara=id_merek_barang WHERE id_barang_sementara='$id_barang_sementara'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_merek_barang_sementara]'>$query2[nama_merek_barang]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM merek_barang");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_merek_barang"] != $barang_sementara["join_merek_barang_sementara"]) {
                        echo "<option value='$query4[id_merek_barang]'>$query4[nama_merek_barang]</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Jenis Barang</label>
        <div class="input-group">
            <select id="join_jenis_barang_sementara" name="join_jenis_barang_sementara" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_jenis_barang_sementara,id_barang_sementara,nama_jenis_barang FROM sementara JOIN jenis_barang ON join_jenis_barang_sementara=id_jenis_barang WHERE id_barang_sementara='$id_barang_sementara'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_jenis_barang_sementara]'>$query2[nama_jenis_barang]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM jenis_barang");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_jenis_barang"] != $barang_sementara["join_jenis_barang_sementara"]) {
                        echo "<option value='$query4[id_jenis_barang]'>$query4[nama_jenis_barang]</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nomor_serial_barang_sementara">Nomor Serial Barang</label>
        <input type="text" class="form-control" id="nomor_serial_barang_sementara" name="nomor_serial_barang_sementara" value="<?= $barang_sementara["nomor_serial_barang_sementara"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="status_barang">Status Barang</label>
        <select class="form-select" id="status_barang_sementara" name="status_barang_sementara" required>
            <?= $status_barang_sementara = $barang_sementara["status_barang_sementara"]; ?>
            <option value="Normal" <?= $status_barang_sementara == 'Normal' ? 'selected' : null ?>>Normal</option>
            <option value="Rusak" <?= $status_barang_sementara == 'Rusak' ? 'selected' : null ?>>Rusak</option>
        </select>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Nama OPD</label>
        <div class="input-group">
            <select id="join_opd_sementara" name="join_opd_sementara" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_opd_sementara,id_barang_sementara,nama_opd,alamat_opd FROM sementara JOIN opd ON join_opd_sementara=id_opd WHERE id_barang_sementara='$id_barang_sementara'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_opd_sementara]'>$query2[nama_opd]-$query2[alamat_opd]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM opd");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_opd"] != $barang_sementara["join_opd_sementara"]) {
                        echo "<option value='$query4[id_opd]'>$query4[nama_opd]-$query4[alamat_opd]</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="detail_lokasi_barang_sementara">Detail Penempatan Barang</label>
        <input type="text" class="form-control" id="detail_lokasi_barang_sementara" name="detail_lokasi_barang_sementara" value="<?= $barang_sementara["detail_lokasi_barang_sementara"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="koordinat_barang_sementara">Koordinat Penempatan Barang</label>
        <input type="text" class="form-control" id="koordinat_barang_sementara" name="koordinat_barang_sementara" value="<?= $barang_sementara["koordinat_barang_sementara"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="keterangan_barang_sementara">Keterangan Barang</label>
        <input type="text" class="form-control" id="keterangan_barang_sementara" name="keterangan_barang_sementara" value="<?= $barang_sementara["keterangan_barang_sementara"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="gambar_barang_sementara">Gambar</label>
        <input class="form-control" id="gambar_barang_sementara" name="gambar_barang_sementara" type="file" onchange="previewImg()">
        <img src="../gambar/<?= $barang_sementara["gambar_barang_sementara"]; ?>" alt="" class="img-thumbnail img-preview mt-2" width="1000px">
    </div>

    <div class="offset-7 mb-4">
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