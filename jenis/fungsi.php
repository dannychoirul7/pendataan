<?php
require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $nama_jenis_barang = htmlspecialchars($data["nama_jenis_barang"]);
    

    // query insert data
    $query = "INSERT INTO jenis_barang(nama_jenis_barang)
    VALUES ('$nama_jenis_barang')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}


function hapus($id_jenis_barang)
{
    global $db;
    mysqli_query($db, "DELETE FROM jenis_barang WHERE id_jenis_barang = $id_jenis_barang");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_jenis_barang = $data["id_jenis_barang"];
    $nama_jenis_barang = htmlspecialchars($data["nama_jenis_barang"]);
    


    // query update data
    $query = "UPDATE jenis_barang SET
            nama_jenis_barang = '$nama_jenis_barang'          
            WHERE id_jenis_barang = $id_jenis_barang     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}
