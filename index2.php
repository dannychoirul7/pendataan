<!DOCTYPE html>
<html>

<head>
    <title>Nav-link dengan Warna Berubah</title>
    <!-- Tambahkan link untuk Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .color-change-link.active {
            background-color: #007bff;
            /* Warna latar belakang biru cerah untuk tautan aktif */
            color: white;
            /* Warna teks putih untuk tautan aktif */
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="#">Beranda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="#">Fitur</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="#">Harga</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="#">Kontak</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Tambahkan link untuk Bootstrap JS dan jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Dapatkan semua elemen dengan kelas 'color-change-link'
            const colorChangeLinks = document.querySelectorAll(".color-change-link");

            // Atur event listener untuk semua tautan
            colorChangeLinks.forEach(function(link) {
                link.addEventListener("click", function(event) {
                    // Hapus kelas 'active' dari semua tautan
                    colorChangeLinks.forEach(function(otherLink) {
                        otherLink.classList.remove("active");
                    });

                    // Tambahkan kelas 'active' pada tautan yang diklik
                    link.classList.add("active");
                });
            });
        });
    </script>

</body>

</html>