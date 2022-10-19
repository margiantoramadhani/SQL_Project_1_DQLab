#### Data Engineer Challenge with SQL

----

#### Produk DQLab Mart
Mengacu pada table ms_produk, tampilkan daftar produk yang memiliki harga antara 50.000 and 150.000.
</br>
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.
</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.
'''plantuml
select no_urut, 
  kode_produk, 
  nama_produk, 
  harga 
from ms_produk
where harga between 50000 and 150000;
'''

----

#### Produk DQLab Mart
