<?php

require "fungsi.php";

$id_jenis_barang = $_GET["id_jenis_barang"];

if (hapus($id_jenis_barang) > 0) {
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
