<?php
require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_opd = md5(time() . mt_rand(1, 1000000));
    $nama_opd = htmlspecialchars($data["nama_opd"]);
    $alamat_opd = htmlspecialchars($data["alamat_opd"]);


    // query insert data
    $query = "INSERT INTO opd(id_opd,nama_opd,alamat_opd)
    VALUES ('$id_opd','$nama_opd','$alamat_opd')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}


function hapus($id_opd)
{
    global $db;
    mysqli_query($db, "DELETE FROM opd WHERE id_opd = '$id_opd'");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_opd = $data["id_opd"];
    $nama_opd = htmlspecialchars($data["nama_opd"]);
    $alamat_opd = htmlspecialchars($data["alamat_opd"]);


    // query update data
    $query = "UPDATE opd SET
            nama_opd = '$nama_opd',
            alamat_opd = '$alamat_opd'          
            WHERE id_opd = '$id_opd'     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}
