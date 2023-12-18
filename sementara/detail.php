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
                <h1 style="text-align:center">Detail Data Barang</h1>
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

                <a style="float: right;" class="btn btn-sm btn-danger m-1" href="index.php" role="button">Kembali</a>
                <a style="float: right;" class="btn btn-sm btn-warning m-1" href="ubah.php?id_barang_sementara=<?= $barang_sementara["id_barang_sementara"]; ?>" role="button">Ubah</a>

            </div>
        </div>
    </div>

</body>
<?php require '../footer.php'; ?>