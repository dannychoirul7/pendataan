<!DOCTYPE html>
<html>

<head>
    <title>Tombol Tetap Tersorot</title>
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
                    <a class="nav-link color-change-link" href="beranda.html">Beranda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="fitur.html">Fitur</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="harga.html">Harga</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color-change-link" href="kontak.html">Kontak</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Tambahkan link untuk Bootstrap JS dan jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Fungsi untuk mengatur cookie
        function setCookie(cname, cvalue, exdays) {
            const d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            const expires = "expires=" + d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        // Fungsi untuk mendapatkan nilai cookie
        function getCookie(cname) {
            const name = cname + "=";
            const decodedCookie = decodeURIComponent(document.cookie);
            const ca = decodedCookie.split(';');
            for (let i = 0; i < ca.length; i++) {
                let c = ca[i];
                while (c.charAt(0) === ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) === 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }

        document.addEventListener("DOMContentLoaded", function() {
            // Dapatkan semua elemen dengan kelas 'color-change-link'
            const colorChangeLinks = document.querySelectorAll(".color-change-link");

            // Periksa apakah ada cookie yang menyimpan tautan aktif
            const activeLink = getCookie("activeLink");
            if (activeLink) {
                colorChangeLinks.forEach(function(link) {
                    if (link.getAttribute("href") === activeLink) {
                        link.classList.add("active");
                    }
                });
            }

            // Atur event listener untuk semua tautan
            colorChangeLinks.forEach(function(link) {
                link.addEventListener("click", function(event) {
                    // Hapus kelas 'active' dari semua tautan
                    colorChangeLinks.forEach(function(otherLink) {
                        otherLink.classList.remove("active");
                    });

                    // Tambahkan kelas 'active' pada tautan yang diklik
                    link.classList.add("active");

                    // Simpan tautan yang diklik sebagai cookie
                    setCookie("activeLink", link.getAttribute("href"), 1);
                });
            });
        });
    </script>

</body>

</html>