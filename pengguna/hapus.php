<?php

require "fungsi.php";

$id_pengguna = $_GET["id_pengguna"];

if (hapus($id_pengguna) > 0) {
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
