<?php
require '../header.php';
require "fungsi.php";

// ambil datadi URL
$id_barang = (int)$_GET["id_barang"];

// query data mahasiswa berdasarkan id
$barang = query("SELECT * FROM barang 
JOIN merek_barang ON join_merek_barang = id_merek_barang 
JOIN jenis_barang ON join_jenis_barang = id_jenis_barang 
JOIN opd ON join_opd = id_opd 
JOIN user ON join_user = id_user
WHERE id_barang = $id_barang ")[0];
$gambar = query("SELECT * FROM gambar WHERE join_barang = $id_barang")[0];
var_dump($gambar);

?>

<body>
    <div class="p-4" id="main-content">
        <div class="card mt-5">
            <div class="card-body">
                <h1 style="text-align:center">DETAIL DATA BARANG</h1>
                <table class="table table-striped">

                    <tr>
                        <td style="width: 25%">merek barang</td>
                        <td>: <?= $barang['nama_merek_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>jenis barang</td>
                        <td>: <?= $barang['nama_jenis_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>nomor_serial_barang </td>
                        <td>: <?= $barang['nomor_serial_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>status_barang</td>
                        <td>: <?= $barang['status_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>opd</td>
                        <td>: <?= $barang['nama_opd']; ?> </td>
                    </tr>

                    <tr>
                        <td>alamat opd</td>
                        <td>: <?= $barang['alamat_opd']; ?> </td>
                    </tr>


                    <tr>
                        <td>nama_user</td>
                        <td>: <?= $barang['nama_user']; ?> </td>
                    </tr>

                    <tr>
                        <td>tanggal_masuk</td>
                        <td>: <?= $barang['tanggal_masuk']; ?> </td>
                    </tr>

                    <tr>
                        <td>tanggal_update</td>
                        <td>: <?= $barang['tanggal_update']; ?> </td>
                    </tr>

                    <tr>
                        <td>detail_lokasi_barang</td>
                        <td>: <?= $barang['detail_lokasi_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>keterangan_barang</td>
                        <td>: <?= $barang['keterangan_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Gambar</td>
                        <td>:

                            <a href="../gambar/<?= $gambar["nama_gambar"]; ?>">
                                <img src="../gambar/<?= $gambar["nama_gambar"]; ?>" alt="nama_gambar" width="15%">
                            </a>

                        </td>
                    </tr>

                </table>
                <a style="float: right;" class="btn btn-sm btn-danger" href="index.php" role="button">Kembali</a>
            </div>
        </div>
    </div>

</body>
<?php require '../footer.php'; ?>