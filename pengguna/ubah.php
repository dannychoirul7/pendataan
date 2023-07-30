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
$id_pengguna = $_GET["id_pengguna"];

// query data mahasiswa berdasarkan id
$pengguna = query("SELECT * FROM pengguna WHERE id_pengguna = $id_pengguna ")[0];

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


<h1 style="text-align: center;">Ubah Data Pengguna</h1>

<form action="" method="post">
    <input type="hidden" id="id_pengguna" name="id_pengguna" value="<?= $pengguna["id_pengguna"]; ?>">

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="username_pengguna">Username</label>
        <input type="text" class="form-control" id="username_pengguna" name="username_pengguna" value="<?= $pengguna["username_pengguna"]; ?>" minlength="6" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="password_pengguna">password</label>
        <input type="password" class="form-control" id="password_pengguna" name="password_pengguna" required minlength="6">
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="password_pengguna2">password ulang</label>
        <input type="password" class="form-control" id="password_pengguna2" name="password_pengguna2" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_pengguna">Nama pengguna</label>
        <input type="text" class="form-control" id="nama_pengguna" name="nama_pengguna" value="<?= $pengguna["nama_pengguna"]; ?>" required>
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="level_pengguna">Level pengguna</label>
        <select class="form-select" id="level_pengguna" name="level_pengguna" required>
            <?= $level_pengguna = $pengguna["level_pengguna"]; ?>
            <option value="satu" <?= $level_pengguna == 'satu' ? 'selected' : null ?>>Admin</option>
            <option value="dua" <?= $level_pengguna == 'dua' ? 'selected' : null ?>>Petugas</option>
            <option value="tiga" <?= $level_pengguna == 'tiga' ? 'selected' : null ?>>Staff Lapangan</option>
        </select>
    </div>

    <div class="offset-4 mb-4">
        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-danger" href="index.php" role="button">Batal</a>
    </div>

</form>
<?php
require "../footer.php";
?>