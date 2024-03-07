<?php

$koneksi = mysqli_connect("localhost", "root", "", "kamus");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>