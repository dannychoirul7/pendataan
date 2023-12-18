<?php

require "../koneksi.php";

function tambah($data)
{
    global $db;
    // ambil data daritiap elemen dalam form
    $id_barang = md5(time() . mt_rand(1, 1000000));
    $join_merek_barang = htmlspecialchars($data["join_merek_barang_sementara"]);
    $join_jenis_barang = htmlspecialchars($data["join_jenis_barang_sementara"]);
    $nomor_serial_barang = htmlspecialchars($data["nomor_serial_barang_sementara"]);
    $status_barang = htmlspecialchars($data["status_barang_sementara"]);
    $join_opd = htmlspecialchars($data["join_opd_sementara"]);
    $detail_lokasi_barang = htmlspecialchars($data["detail_lokasi_barang_sementara"]);
    $koordinat_barang = htmlspecialchars($data["koordinat_barang_sementara"]);
    $keterangan_barang = htmlspecialchars($data["keterangan_barang_sementara"]);
    $tanggal_masuk_barang = htmlspecialchars($data["tanggal_masuk_barang_sementara"]);
    $tanggal_update_barang = htmlspecialchars($data["tanggal_update_barang_sementara"]);
    $join_pengguna = htmlspecialchars($data["join_pengguna_sementara"]);
    $gambar_barang = htmlspecialchars($data["gambar_barang_sementara"]);


    // query insert data
    $query = "INSERT INTO barang(
        id_barang,
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
    '$id_barang',
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

function hapus($id_barang_sementara)
{
    global $db;
    mysqli_query($db, "DELETE FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'");
    return mysqli_affected_rows($db);
}

function hapus_semua($id_barang_sementara)
{
    global $db;

    $queryunlink =  mysqli_fetch_array(mysqli_query($db, "SELECT * FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'"));
    $filename = $queryunlink["gambar_barang_sementara"];
    unlink('../gambar/' . $filename);

    mysqli_query($db, "DELETE FROM sementara WHERE id_barang_sementara = '$id_barang_sementara'");
    return mysqli_affected_rows($db);
}
