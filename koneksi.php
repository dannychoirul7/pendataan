<?php
//koneksi ke database
$db = mysqli_connect("localhost", "root", "", "pendataan");

// cek koneksi
// if (!$db) {
//     echo "gagal";
// } else {
//     echo "berhasil";
// }


function query($query)
{
    //panggil koneksi database
    global $db;
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
