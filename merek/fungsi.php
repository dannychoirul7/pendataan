<?php


require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $nama_merek_barang = htmlspecialchars($data["nama_merek_barang"]);


    // query insert data
    $query = "INSERT INTO merek_barang(nama_merek_barang)
    VALUES ('$nama_merek_barang')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}


function hapus($id_merek_barang)
{
    global $db;
    mysqli_query($db, "DELETE FROM merek_barang WHERE id_merek_barang = $id_merek_barang");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_merek_barang = $data["id_merek_barang"];
    $nama_merek_barang = htmlspecialchars($data["nama_merek_barang"]);



    // query update data
    $query = "UPDATE merek_barang SET
            nama_merek_barang = '$nama_merek_barang'          
            WHERE id_merek_barang = $id_merek_barang     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}
