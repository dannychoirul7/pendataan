<?php
require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $username_pengguna = htmlspecialchars($data["username_pengguna"]);
    $password_pengguna = htmlspecialchars($data["password_pengguna"]);
    $nama_pengguna = htmlspecialchars($data["nama_pengguna"]);
    $level_pengguna = htmlspecialchars($data["level_pengguna"]);

    // enkripsi password
    // $password = md5($password);
    $password_pengguna = password_hash($password_pengguna, PASSWORD_DEFAULT);

    // query insert data
    $query = "INSERT INTO pengguna(username_pengguna,password_pengguna,nama_pengguna,level_pengguna)
    VALUES ('$username_pengguna','$password_pengguna','$nama_pengguna','$level_pengguna')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}


function hapus($id_pengguna)
{
    global $db;
    mysqli_query($db, "DELETE FROM pengguna WHERE id_pengguna = $id_pengguna");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_user = $data["id_user"];
    $nama_user = htmlspecialchars($data["nama_user"]);
    $alamat_user = htmlspecialchars($data["alamat_user"]);


    // query update data
    $query = "UPDATE user SET
            nama_user = '$nama_user',
            alamat_user = '$alamat_user'          
            WHERE id_user = $id_user     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}
