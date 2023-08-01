<?php


require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $keterangan_gambar = htmlspecialchars($data['keterangan_gambar']);
    $nama_gambar = upload();
    if (!$nama_gambar) {
        return false;
    }

    // query insert data
    $query = "INSERT INTO gambar(keterangan_gambar,nama_gambar)
    VALUES ('$keterangan_gambar','$nama_gambar')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function hapus($id_gambar)
{
    global $db;

    $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM gambar WHERE id_gambar = $id_gambar"));
    $filename = $queryunlink["nama_gambar"];
    unlink('../gambar/' . $filename);

    global $db;
    mysqli_query($db, "DELETE FROM gambar WHERE id_gambar = $id_gambar");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_gambar = $data["id_gambar"];
    $keterangan_gambar = htmlspecialchars($data["keterangan_gambar"]);
    $nama_gambar_lama = htmlspecialchars($data["nama_gambar_lama"]);

    if ($_FILES['nama_gambar']['error'] === 4) {
        $nama_gambar = $nama_gambar_lama;
    } else {
        $nama_gambar = upload();
        if (!$nama_gambar) {
            return false;
        }

        // hapus gambar pada direktori
        $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM gambar WHERE id_gambar = $id_gambar"));
        $filename = $queryunlink["nama_gambar"];
        unlink('../gambar/' . $filename);
    }

    // query update data
    $query = "UPDATE gambar SET
            keterangan_gambar ='$keterangan_gambar', 
            nama_gambar ='$nama_gambar'
            WHERE id_gambar = $id_gambar     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function upload()
{
    $namaFile   = $_FILES['nama_gambar']['name'];
    $ukuranFile = $_FILES['nama_gambar']['size'];
    $error      = $_FILES['nama_gambar']['error'];
    $tmpName    = $_FILES['nama_gambar']['tmp_name'];

    // cek apakah tidak ada gambar yang di upload
    if ($error === 4) {
        echo "<script> alert('pilih gambar!!!!!');</script>";
        return false;
    }

    // cek apakah yang di upload gambar 
    $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
    $ekstensiGambar = explode('.', $namaFile);
    $ekstensiGambar = strtolower(end($ekstensiGambar)); //strtolower=paksa huruf jadi kecil && end = array paling akhir
    if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
        echo "<script> alert('bukan gambar!!!!!');</script>";
        return false;
    }

    // cek ukuran terlalu besar
    if ($ukuranFile > 21000000) {
        echo "<script> alert('gambar kegedean!!!!!');</script>";
        return false;
    }

    // generate nama gambar baru
    $namaFileBaru = uniqid(); // membuat string random
    // var_dump($namaFileBaru);
    // // die;
    $namaFileBaru .= '.'; // titik sama dengan itu untuk menempelkan nama uniqid diatas dengan titik
    $namaFileBaru .= $ekstensiGambar; // dan menempelkan titik diatas dengan ekstensigambar

    // lolos pengecekan gambar siap di upload
    move_uploaded_file($tmpName, '../gambar/' . $namaFileBaru);

    return $namaFileBaru;
}
