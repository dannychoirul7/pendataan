<?php

require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $username_pengguna = htmlspecialchars($data["username_pengguna"]);
    $password_pengguna = mysqli_real_escape_string($db, $data["password_pengguna"]);
    $password_pengguna2 = mysqli_real_escape_string($db, $data["password_pengguna2"]);
    $nama_pengguna = htmlspecialchars($data["nama_pengguna"]);
    $level_pengguna = htmlspecialchars($data["level_pengguna"]);

    $result = mysqli_query($db, "SELECT username_pengguna FROM pengguna WHERE username_pengguna = '$username_pengguna'");
    if (mysqli_fetch_assoc($result)) {
        echo "<script> alert('user sudah ada')</script>";
        return false;
    }

    // cek konfirmasi password
    if ($password_pengguna !== $password_pengguna2) {
        echo "<script> alert('password tidak sama')</script>";
        return false;
    }

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
    $id_pengguna = $data["id_pengguna"];
    $username_pengguna = htmlspecialchars($data["username_pengguna"]);
    $password_pengguna = mysqli_real_escape_string($db, $data["password_pengguna"]);
    $password_pengguna2 = mysqli_real_escape_string($db, $data["password_pengguna2"]);
    $nama_pengguna = htmlspecialchars($data["nama_pengguna"]);
    $level_pengguna = htmlspecialchars($data["level_pengguna"]);

    // cek konfirmasi password
    if ($password_pengguna !== $password_pengguna2) {
        echo "<script> alert('password tidak sama')</script>";
        return false;
    }

    // enkripsi password
    // $password = md5($password);
    $password_pengguna = password_hash($password_pengguna, PASSWORD_DEFAULT);

    // query update data
    $query = "UPDATE pengguna SET
            username_pengguna = '$username_pengguna',
            password_pengguna = '$password_pengguna',
            nama_pengguna  =     '$nama_pengguna',
            level_pengguna =     '$level_pengguna'      
            WHERE id_pengguna = $id_pengguna
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}
