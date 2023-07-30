<?php

require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $join_merek_barang = htmlspecialchars($data["join_merek_barang"]);
    $join_jenis_barang = htmlspecialchars($data["join_jenis_barang"]);
    $nomor_serial_barang = htmlspecialchars($data["nomor_serial_barang"]);
    $status_barang = htmlspecialchars($data["status_barang"]);
    $join_opd = htmlspecialchars($data["join_opd"]);
    $detail_lokasi_barang = htmlspecialchars($data["detail_lokasi_barang"]);
    $koordinat_barang = htmlspecialchars($data["koordinat_barang"]);
    $keterangan_barang = htmlspecialchars($data["keterangan_barang"]);
    $tanggal_masuk_barang = date('Y-m-d H:i:s');
    $tanggal_update_barang = date('Y-m-d H:i:s');
    $join_pengguna = $_SESSION['id_pengguna'];
    $gambar_barang = upload();
    if (!$gambar_barang) {
        return false;
    }

    // query insert data
    $query = "INSERT INTO barang(
        join_merek_barang,
        join_jenis_barang,
        nomor_serial_barang,
        status_barang,
        join_opd,
        detail_lokasi_barang,
        koordinat_barang,
        keterangan_barang,
        tanggal_masuk_barang,
        tanggal_update_barang,
        join_pengguna,
        gambar_barang)
    VALUES (
    '$join_merek_barang',
    '$join_jenis_barang',
    '$nomor_serial_barang',
    '$status_barang',
    '$join_opd',
    '$detail_lokasi_barang',
    '$koordinat_barang',
    '$keterangan_barang',
    '$tanggal_masuk_barang',
    '$tanggal_update_barang',
    '$join_pengguna',
    '$gambar_barang')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function hapus($id_barang)
{
    global $db;

    $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM barang WHERE id_barang = $id_barang"));
    $filename = $queryunlink["gambar_barang"];
    unlink('../gambar/' . $filename);

    mysqli_query($db, "DELETE FROM barang WHERE id_barang = $id_barang");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_barang = $data["id_barang"];
    $join_merek_barang = htmlspecialchars($data["join_merek_barang"]);
    $join_jenis_barang = htmlspecialchars($data["join_jenis_barang"]);
    $nomor_serial_barang = htmlspecialchars($data["nomor_serial_barang"]);
    $status_barang = htmlspecialchars($data["status_barang"]);
    $join_opd = htmlspecialchars($data["join_opd"]);
    $detail_lokasi_barang = htmlspecialchars($data["detail_lokasi_barang"]);
    $koordinat_barang = htmlspecialchars($data["koordinat_barang"]);
    $keterangan_barang = htmlspecialchars($data["keterangan_barang"]);
    $tanggal_update_barang = date('Y-m-d H:i:s');
    $join_pengguna = $_SESSION['id_pengguna'];
    $gambar_barang_lama = htmlspecialchars($data["gambar_barang_lama"]);

    if ($_FILES['gambar_barang']['error'] === 4) {
        $gambar_barang = $gambar_barang_lama;
    } else {
        $gambar_barang = upload();
        if (!$gambar_barang) {
            return false;
        }

        // hapus gambar pada direktori
        $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM barang WHERE id_barang = $id_barang"));
        $filename = $queryunlink["gambar_barang"];
        unlink('../gambar/' . $filename);
    }

    // query update data
    $query = "UPDATE barang SET
            join_merek_barang ='$join_merek_barang', 
            join_jenis_barang ='$join_jenis_barang',
            nomor_serial_barang ='$nomor_serial_barang',
            status_barang ='$status_barang',
            join_opd ='$join_opd',
            detail_lokasi_barang ='$detail_lokasi_barang',
            koordinat_barang ='$koordinat_barang',
            keterangan_barang ='$keterangan_barang',
            tanggal_update_barang = '$tanggal_update_barang',
            join_pengguna ='$join_pengguna',
            gambar_barang ='$gambar_barang'
            WHERE id_barang = $id_barang     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function upload()
{
    $namaFile   = $_FILES['gambar_barang']['name'];
    $ukuranFile = $_FILES['gambar_barang']['size'];
    $error      = $_FILES['gambar_barang']['error'];
    $tmpName    = $_FILES['gambar_barang']['tmp_name'];

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
