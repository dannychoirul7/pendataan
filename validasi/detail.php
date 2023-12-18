<?php
session_start();
if (!isset($_SESSION["login"])) {
    echo "<script>
    alert('Masukkan name dan Password');
    document.location.href ='login.php';
    </script>";
    exit;
}

require '../header.php';
require "fungsi.php";

// ambil datadi URL
$id_barang_sementara = (int)$_GET["id_barang_sementara"];

if (isset($_POST["submit"])) {
    var_dump($_POST);
    print_r($_FILES);

    // data berhasil di tambahkan atau tidak
    if (tambah($_POST) > 0) {
        echo "<script>
        alert('data masuk');
        document.location.href = 'index.php';
        </script>";
        $id_barang_sementara = $_GET["id_barang_sementara"];
        if (hapus($id_barang_sementara) > 0) {
            echo "<script>
            alert('data sukses di hapus');
            document.location.href = 'index.php';
            </script>";
        } else {
            echo "<script>
            alert('data gagal di hapus');
            document.location.href = 'index.php';
            </script>";
        }
    } else {
        echo "<script>
        alert('data gagal');
        document.location.href = 'tambah.php';
        </script>";
    }
}

// query data mahasiswa berdasarkan id
$barang_sementara = query("SELECT * FROM sementara
JOIN merek_barang ON join_merek_barang_sementara = id_merek_barang 
JOIN jenis_barang ON join_jenis_barang_sementara = id_jenis_barang 
JOIN opd ON join_opd_sementara = id_opd 
JOIN pengguna ON join_pengguna_sementara = id_pengguna
WHERE id_barang_sementara = $id_barang_sementara")[0];

?>

<body>
    <div class="p-4" id="main-content">
        <div class="card mt-5">
            <div class="card-body">
                <h1 style="text-align:center">Detail Data Barang Sementara</h1>
                <form action="" method="post" enctype="multipart/form-data">
                    <input type="hidden" id="join_merek_barang_sementara" name="join_merek_barang_sementara" value="<?= $barang_sementara["join_merek_barang_sementara"]; ?>">
                    <input type="hidden" id="join_jenis_barang_sementara" name="join_jenis_barang_sementara" value="<?= $barang_sementara["join_jenis_barang_sementara"]; ?>">
                    <input type="hidden" id="nomor_serial_barang_sementara" name="nomor_serial_barang_sementara" value="<?= $barang_sementara["nomor_serial_barang_sementara"]; ?>">
                    <input type="hidden" id="status_barang_sementara" name="status_barang_sementara" value="<?= $barang_sementara["status_barang_sementara"]; ?>">
                    <input type="hidden" id="join_opd_sementara" name="join_opd_sementara" value="<?= $barang_sementara["join_opd_sementara"]; ?>">
                    <input type="hidden" id="detail_lokasi_barang_sementara" name="detail_lokasi_barang_sementara" value="<?= $barang_sementara["detail_lokasi_barang_sementara"]; ?>">
                    <input type="hidden" id="koordinat_barang_sementara" name="koordinat_barang_sementara" value="<?= $barang_sementara["koordinat_barang_sementara"]; ?>">
                    <input type="hidden" id="keterangan_barang_sementara" name="keterangan_barang_sementara" value="<?= $barang_sementara["keterangan_barang_sementara"]; ?>">
                    <input type="hidden" id="tanggal_masuk_barang_sementara" name="tanggal_masuk_barang_sementara" value="<?= $barang_sementara["tanggal_masuk_barang_sementara"]; ?>">
                    <input type="hidden" id="tanggal_update_barang_sementara" name="tanggal_update_barang_sementara" value="<?= $barang_sementara["tanggal_update_barang_sementara"]; ?>">
                    <input type="hidden" id="join_pengguna_sementara" name="join_pengguna_sementara" value="<?= $barang_sementara["join_pengguna_sementara"]; ?>">
                    <input type="hidden" id="gambar_barang_sementara" name="gambar_barang_sementara" value="<?= $barang_sementara["gambar_barang_sementara"]; ?>">


                    <table class="table table-striped">

                        <tr>
                            <td style="width: 25%">Merek Barang</td>
                            <td>: <?= $barang_sementara['nama_merek_barang']; ?> </td>
                        </tr>

                        <tr>
                            <td>Jenis Barang</td>
                            <td>: <?= $barang_sementara['nama_jenis_barang']; ?> </td>
                        </tr>

                        <tr>
                            <td>Nomor Serial Barang </td>
                            <td>: <?= $barang_sementara['nomor_serial_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Status Barang</td>
                            <td>: <?= $barang_sementara['status_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Nama OPD</td>
                            <td>: <?= $barang_sementara['nama_opd']; ?> </td>
                        </tr>

                        <tr>
                            <td>Alamat OPD</td>
                            <td>: <?= $barang_sementara['alamat_opd']; ?> </td>
                        </tr>

                        <tr>
                            <td>Detail Penempatan Barang</td>
                            <td>: <?= $barang_sementara['detail_lokasi_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Koordinat Penempatan Barang</td>
                            <td>: <?= $barang_sementara['koordinat_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Keterangan Barang</td>
                            <td>: <?= $barang_sementara['keterangan_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Tanggal Awal Barang Terpasang</td>
                            <td>: <?= $barang_sementara['tanggal_masuk_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Tanggal Terakhir Update</td>
                            <td>: <?= $barang_sementara['tanggal_update_barang_sementara']; ?> </td>
                        </tr>

                        <tr>
                            <td>Nama Pengguna</td>
                            <td>: <?= $barang_sementara['nama_pengguna']; ?> </td>
                        </tr>


                        <tr>
                            <td>Gambar Pedukung</td>
                            <td>:

                                <a href="../gambar/<?= $barang_sementara["gambar_barang_sementara"]; ?>">
                                    <img src="../gambar/<?= $barang_sementara["gambar_barang_sementara"]; ?>" alt="gambar" width="25%">
                                </a>

                            </td>
                        </tr>

                    </table>
                    <button type="submit" name="submit" class="btn btn-sm btn-primary">Sesuai</button>
                    <a style="float: right;" class="btn btn-sm btn-light m-1" href="index.php" role="button">Kembali</a>
                    <a style="float: right;" class="btn btn-sm btn-danger m-1" href="hapus.php?id_barang_sementara=<?= $barang_sementara["id_barang_sementara"]; ?>" role="button">Tidak Sesuai</a>

                </form>
            </div>
        </div>
    </div>

</body>
<?php require '../footer.php'; ?>