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



</footer>

</body>

</html>