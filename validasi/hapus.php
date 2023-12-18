<?php
session_start();
if (!isset($_SESSION["login"])) {
    echo "<script>
    alert('Masukkan name dan Password');
    document.location.href ='login.php';
    </script>";
    exit;
}

require "fungsi.php";

$id_barang_sementara = $_GET["id_barang_sementara"];

if (hapus_semua($id_barang_sementara) > 0) {
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
