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
$id_barang = $_GET["id_barang"];

// query data mahasiswa berdasarkan id
$barang = query("SELECT * FROM barang WHERE id_barang = '$id_barang' ")[0];

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

<h1 style="text-align: center;">Ubah Data Barang</h1>

<form action="" method="post" enctype="multipart/form-data">
    <input type="hidden" id="id_barang" name="id_barang" value="<?= $barang["id_barang"]; ?>">
    <input type="hidden" id="id_barang" name="gambar_barang_lama" value="<?= $barang["gambar_barang"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Merek Barang</label>
        <div class="input-group">
            <select id="join_merek_barang" name="join_merek_barang" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_merek_barang,id_barang,nama_merek_barang FROM barang JOIN merek_barang ON join_merek_barang=id_merek_barang WHERE id_barang='$id_barang'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_merek_barang]'>$query2[nama_merek_barang]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM merek_barang");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_merek_barang"] != $barang["join_merek_barang"]) {
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
            <select id="join_jenis_barang" name="join_jenis_barang" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_jenis_barang,id_barang,nama_jenis_barang FROM barang JOIN jenis_barang ON join_jenis_barang=id_jenis_barang WHERE id_barang='$id_barang'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_jenis_barang]'>$query2[nama_jenis_barang]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM jenis_barang");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_jenis_barang"] != $barang["join_jenis_barang"]) {
                        echo "<option value='$query4[id_jenis_barang]'>$query4[nama_jenis_barang]</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nomor_serial_barang">Nomor Serial Barang</label>
        <input type="text" class="form-control" id="nomor_serial_barang" name="nomor_serial_barang" value="<?= $barang["nomor_serial_barang"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="status_barang">Status Barang</label>
        <select class="form-select" id="status_barang" name="status_barang" required>
            <?= $status_barang = $barang["status_barang"]; ?>
            <option value="Normal" <?= $status_barang == 'Normal' ? 'selected' : null ?>>Normal</option>
            <option value="Rusak" <?= $status_barang == 'Rusak' ? 'selected' : null ?>>Rusak</option>
        </select>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label>Nama OPD</label>
        <div class="input-group">
            <select id="join_opd" name="join_opd" style="width:100%" class="select2">
                <?php

                // agar nilai yang sama bisa muncul dan pilih 
                $query = mysqli_query($db, "SELECT join_opd,id_barang,nama_opd,alamat_opd FROM barang JOIN opd ON join_opd=id_opd WHERE id_barang='$id_barang'");
                if ($query == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query2 = mysqli_fetch_assoc($query)) {
                    echo "<option value='$query2[join_opd]'>$query2[nama_opd]-$query2[alamat_opd]</option>";
                }

                // agar nilai yang tidak sama bisa muncul dan pilih 
                $query3 = mysqli_query($db, "SELECT * FROM opd");
                if ($query3 == false) {
                    die("Terdapat Kesalahan : " . mysqli_error($db));
                }
                while ($query4 = mysqli_fetch_assoc($query3)) {
                    if ($query4["id_opd"] != $barang["join_opd"]) {
                        echo "<option value='$query4[id_opd]'>$query4[nama_opd]-$query4[alamat_opd]</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="detail_lokasi_barang">Detail Penempatan Barang</label>
        <input type="text" class="form-control" id="detail_lokasi_barang" name="detail_lokasi_barang" value="<?= $barang["detail_lokasi_barang"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="koordinat_barang">Koordinat Penempatan Barang</label>
        <input type="text" class="form-control" id="koordinat_barang" name="koordinat_barang" value="<?= $barang["koordinat_barang"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="keterangan_barang">Keterangan Barang</label>
        <input type="text" class="form-control" id="keterangan_barang" name="keterangan_barang" value="<?= $barang["keterangan_barang"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="gambar_barang">Gambar</label>
        <input class="form-control" id="gambar_barang" name="gambar_barang" type="file" onchange="previewImg()">
        <img src="../gambar/<?= $barang["gambar_barang"]; ?>" alt="" class="img-thumbnail img-preview mt-2" width="1000px">
    </div>

    <div class="offset-7 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>

<!-- preview gambar -->
<script>
    function previewImg() {
        const gambar_barang = document.querySelector('#gambar_barang');
        const imgPreview = document.querySelector('.img-preview');

        const fileFoto = new FileReader();
        fileFoto.readAsDataURL(gambar_barang.files[0]);

        fileFoto.onload = function(e) {
            imgPreview.src = e.target.result;
        }
    }
</script>
<?php
require "../footer.php";
?>