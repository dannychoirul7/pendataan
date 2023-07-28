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

<h1 style="text-align: center;">Tambah Data pengguna</h1>

<form action="" method="post">
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="username_pengguna">username</label>
        <input type="text" class="form-control" id="username_pengguna" name="username_pengguna" required minlength="6">
    </div>
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="password_pengguna">Password</label>
        <input type="password" class="form-control" id="password_pengguna" name="password_pengguna" required minlength="6">
    </div>

    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="password_pengguna2">Password Ulang</label>
        <input type="password" class="form-control" id="password_pengguna2" name="password_pengguna2" required
        >
    </div>
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="nama_pengguna">Nama pengguna</label>
        <input type="text" class="form-control" id="nama_pengguna" name="nama_pengguna" required>
    </div>
    <div class="form-group col-md-4 offset-4 mb-4">
        <label for="level_pengguna">Level pengguna</label>
        <select class="form-select" id="level_pengguna" name="level_pengguna" required>
            <option value="">Pilih Level</option>
            <option value="satu">Admin</option>
            <option value="dua">Petugas</option>
            <option value="tiga">Staff Lapangan</option>
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