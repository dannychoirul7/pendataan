<?php

require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_barang_sementara = md5(time() . mt_rand(1, 1000000));
    $join_merek_barang_sementara = htmlspecialchars($data["join_merek_barang_sementara"]);
    $join_jenis_barang_sementara = htmlspecialchars($data["join_jenis_barang_sementara"]);
    $nomor_serial_barang_sementara = htmlspecialchars($data["nomor_serial_barang_sementara"]);
    $status_barang_sementara = htmlspecialchars($data["status_barang_sementara"]);
    $join_opd_sementara = htmlspecialchars($data["join_opd_sementara"]);
    $detail_lokasi_barang_sementara = htmlspecialchars($data["detail_lokasi_barang_sementara"]);
    $koordinat_barang_sementara = htmlspecialchars($data["koordinat_barang_sementara"]);
    $keterangan_barang_sementara = htmlspecialchars($data["keterangan_barang_sementara"]);
    $tanggal_masuk_barang_sementara = date('Y-m-d H:i:s');
    $tanggal_update_barang_sementara = date('Y-m-d H:i:s');
    $join_pengguna_sementara = $_SESSION['id_pengguna'];
    $gambar_barang_sementara = upload();
    if (!$gambar_barang_sementara) {
        return false;
    }

    // query insert data
    $query = "INSERT INTO sementara(
        id_barang_sementara,
        join_merek_barang_sementara,
        join_jenis_barang_sementara,
        nomor_serial_barang_sementara,
        status_barang_sementara,
        join_opd_sementara,
        detail_lokasi_barang_sementara,
        koordinat_barang_sementara,
        keterangan_barang_sementara,
        tanggal_masuk_barang_sementara,
        tanggal_update_barang_sementara,
        join_pengguna_sementara,
        gambar_barang_sementara)
    VALUES (
    '$id_barang_sementara',
    '$join_merek_barang_sementara',
    '$join_jenis_barang_sementara',
    '$nomor_serial_barang_sementara',
    '$status_barang_sementara',
    '$join_opd_sementara',
    '$detail_lokasi_barang_sementara',
    '$koordinat_barang_sementara',
    '$keterangan_barang_sementara',
    '$tanggal_masuk_barang_sementara',
    '$tanggal_update_barang_sementara',
    '$join_pengguna_sementara',
    '$gambar_barang_sementara')";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function hapus($id_barang_sementara)
{
    global $db;

    $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'"));
    $filename = $queryunlink["gambar_barang_sementara"];
    unlink('../gambar/' . $filename);

    mysqli_query($db, "DELETE FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'");
    return mysqli_affected_rows($db);
}

function ubah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_barang_sementara = $data["id_barang_sementara"];
    $join_merek_barang_sementara = htmlspecialchars($data["join_merek_barang_sementara"]);
    $join_jenis_barang_sementara = htmlspecialchars($data["join_jenis_barang_sementara"]);
    $nomor_serial_barang_sementara = htmlspecialchars($data["nomor_serial_barang_sementara"]);
    $status_barang_sementara = htmlspecialchars($data["status_barang_sementara"]);
    $join_opd_sementara = htmlspecialchars($data["join_opd_sementara"]);
    $detail_lokasi_barang_sementara = htmlspecialchars($data["detail_lokasi_barang_sementara"]);
    $koordinat_barang_sementara = htmlspecialchars($data["koordinat_barang_sementara"]);
    $keterangan_barang_sementara = htmlspecialchars($data["keterangan_barang_sementara"]);
    $tanggal_update_barang_sementara = date('Y-m-d H:i:s');
    $join_pengguna_sementara = $_SESSION['id_pengguna'];
    $gambar_barang_lama = htmlspecialchars($data["gambar_barang_lama"]);

    if ($_FILES['gambar_barang_sementara']['error'] === 4) {
        $gambar_barang_sementara = $gambar_barang_lama;
    } else {
        $gambar_barang_sementara = upload();
        if (!$gambar_barang_sementara) {
            return false;
        }

        // hapus gambar pada direktori
        $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'"));
        $filename = $queryunlink["gambar_barang_sementara"];
        unlink('../gambar/' . $filename);
    }

    // query update data
    $query = "UPDATE sementara SET
            join_merek_barang_sementara ='$join_merek_barang_sementara', 
            join_jenis_barang_sementara ='$join_jenis_barang_sementara',
            nomor_serial_barang_sementara ='$nomor_serial_barang_sementara',
            status_barang_sementara ='$status_barang_sementara',
            join_opd_sementara ='$join_opd_sementara',
            detail_lokasi_barang_sementara ='$detail_lokasi_barang_sementara',
            koordinat_barang_sementara ='$koordinat_barang_sementara',
            keterangan_barang_sementara ='$keterangan_barang_sementara',
            tanggal_update_barang_sementara = '$tanggal_update_barang_sementara',
            join_pengguna_sementara ='$join_pengguna_sementara',
            gambar_barang_sementara ='$gambar_barang_sementara'
            WHERE id_barang_sementara = '$id_barang_sementara'     
        ";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function upload()
{
    $namaFile   = $_FILES['gambar_barang_sementara']['name'];
    $ukuranFile = $_FILES['gambar_barang_sementara']['size'];
    $error      = $_FILES['gambar_barang_sementara']['error'];
    $tmpName    = $_FILES['gambar_barang_sementara']['tmp_name'];

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
