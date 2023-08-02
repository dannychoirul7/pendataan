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
require "../koneksi.php";
$catatan = query("SELECT * FROM catatan_pengguna
ORDER BY id_catatan DESC");
?>

<body>
    <?php
    require '../side.php';
    ?>
    <div class="p-4" id="main-content">
        <button class="btn btn-primary" id="button-toggle">
            Toggle Menu
        </button>
        <div class="card mt-5">
            <div class="card-body">
                <h1 style="text-align:center">Data Catatan Pengguna</h1>
                <table class="table table-striped" id="datatable">
                    <thead>
                        <tr style="text-align:center">
                            <th width="15%" style="text-align:center">No</th>
                            <th style="text-align:center">Id Pengguna</th>
                            <th style="text-align:center">Username</th>
                            <th style="text-align:center">Password</th>
                            <th style="text-align:center">Nama User</th>
                            <th style="text-align:center">Level User</th>
                            <th style="text-align:center">Keterangan</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; ?>
                        <?php foreach ($catatan as $row) : ?>
                            <tr>
                                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                                <td style="text-align: center;"><?= $row["id_pengguna_catatan"]; ?></td>
                                <td style="text-align: center;"><?= $row["username_pengguna_catatan"]; ?></td>
                                <td style="text-align: center;"><?= $row["password_pengguna_catatan"]; ?></td>
                                <td style="text-align: center;"><?= $row["nama_pengguna_catatan"]; ?></td>
                                <td style="text-align: center;"> <?php
                                                                    if ($row["level_pengguna_catatan"] == "nol") {
                                                                        echo "Unknown";
                                                                    }
                                                                    if ($row["level_pengguna_catatan"] == "satu") {
                                                                        echo "Administrator";
                                                                    }
                                                                    if ($row["level_pengguna_catatan"] == "dua") {
                                                                        echo "Petugas";
                                                                    }
                                                                    if ($row["level_pengguna_catatan"] == "tiga") {
                                                                        echo "Staff Lapangan";
                                                                    }  ?></td>
                                <td style="text-align: center;"><?= $row["keterangan_catatan"]; ?></td>

                            </tr>
                        <?php $no++;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<?php require '../footer.php'; ?>