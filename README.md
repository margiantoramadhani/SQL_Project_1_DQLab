#### Data Engineer Challenge with SQL

----

#### Dataset project

1. ms_pelanggan
2. ms_produk
3. tr_penjualan
4. tr_penjualan_detail

----

#### Produk DQLab Mart
Mengacu pada table ms_produk, tampilkan daftar produk yang memiliki harga antara 50.000 and 150.000.
</br>
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.
</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.
```plantuml
select 
  no_urut, 
  kode_produk, 
  nama_produk, 
  harga 
from 
  ms_produk
where 
  harga between 50000 and 150000;
```

<details>
<summary markdown="span">Output :</summary>

| no_urut | kode_produk | nama_produk                        | harga  |
|---------|-------------|------------------------------------|--------|
|       1 | prod-01     | Kotak Pensil DQLab                 |  60500 |
|       2 | prod-02     | Flashdisk DQLab 64 GB              |  55000 |
|       3 | prod-03     | Gift Voucher DQLab 100rb           | 100000 |
|       6 | prod-06     | Pulpen Multifunction + Laser DQLab |  92500 |
|       9 | prod-09     | Buku Planner Agenda DQLab          |  92000 |
|      10 | prod-10     | Sticky Notes DQLab 500 sheets      |  55000 |

</details>

----

#### Produk DQLab Mart
