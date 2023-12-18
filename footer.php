<!-- footer.php -->
<footer>
  <!-- Tambahkan elemen-elemen footer -->
  <script type="text/javascript" src="../assets/js/popper.min.js"></script>
  <script type="text/javascript" src="../assets/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="../assets/js/jquery-3.7.0.js"></script>
  <script type="text/javascript" src="../assets/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="../assets/js/dataTables.bootstrap5.min.js"></script>
  <script type="text/javascript" src="../assets/js/all.js"></script>
  <script type="text/javascript" src="../assets/js/select2.min.js"></script>
  <script type="text/javascript" src="../assets/js/jqClock.min.js"></script>

  <!-- jam -->
  <script type="text/javascript">
    $(document).ready(function() {
      $("#jam").clock({
        "langSet": "id",
        "timeFormat": ", %Pukul% H:i:s "
      });
    });
  </script>

  <!-- select2 -->
  <script>
    $(document).ready(function() {
      $('.select2').select2();
    });
  </script>

  <!-- datatables -->
  <script>
    new DataTable('#datatable', {

    });
  </script>

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


</footer>

</body>

</html>