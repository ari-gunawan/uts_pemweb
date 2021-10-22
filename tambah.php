<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>

<body>

    <?php include_once "menu.php"; ?>

    <div class="container">

        <h2>Input Biodata Mahasiswa</h2>
        <div class="row mb-2">
            <div class="col-sm-12">
                <span class="m-1">
                    <a href="viewall.php" class="btn btn-info" role="button">Kembali</a>
                </span>
            </div>
        </div>
        <?php
        include "koneksi.php";
        include "fungsi.php";
        $nim = $namadepan = $namabelakang = $email = "";
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nim = bersihkan_input($_POST['nim']);
            $namadepan = bersihkan_input($_POST['namadepan']);
            $namabelakang = bersihkan_input($_POST['namabelakang']);
            $email = bersihkan_input($_POST['email']);

            $strSQL = "INSERT INTO mahasiswa (nim, namadepan, namabelakang, email) VALUES ('$nim','$namadepan','$namabelakang','$email')";

            // echo "Query = " . $strSQL;
            $execStrSQL = mysqli_query($conn, $strSQL);
            if ($execStrSQL) {
        ?>
                <div class="alert alert-success">
                    data berhasil ditambahkan ditambahkan
                </div>
            <?php
            } else {
            ?>
                <div class="alert alert-success">
                    data tidak berhasil ditambahkan ditambahkan
                </div>
        <?php
            }
        }
        ?>
        <form action="<?= htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>NIM</th>
                        <th><input type="text" class="form-control" name="nim"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nama Depan</td>
                        <td><input type="text" class="form-control" name="namadepan"></td>
                    </tr>
                    <tr>
                        <td>Nama Belakang</td>
                        <td><input type="text" class="form-control" name="namabelakang"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" class="form-control" name="email"></td>
                    </tr>
                </tbody>
            </table>
            <div class="row mb-2">
                <div class="col-sm-12">
                    <span class="m-1">
                        <button type="submit" class="btn btn-primary">
                            Simpan
                        </button>
                    </span>
                </div>
            </div>
        </form>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>