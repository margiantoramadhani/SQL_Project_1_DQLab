#### Data Engineer Challenge with SQL

----

#### Dataset project

1. ms_pelanggan

| no_urut | kode_cabang | kode_pelanggan | nama_pelanggan      | alamat                                      |
|---------|-------------|----------------|---------------------|---------------------------------------------|
|       1 | jkt-001     | cust0001       | Eva Novianti, S.H.  | Vila Sempilan, No. 67                       |
|       2 | jkt-002     | cust0002       | Heidi Goh           | Ruko Sawit Permai 72 No. 1                  |
|       3 | jkt-001     | cust0003       | Unang Handoko       | Vila Sempilan No. 1                         |
|       4 | jkt-001     | cust0004       | Jokolono Sukarman   | Permata Intan Berkilau Residence, Blok C5-7 |
|       5 | bdg-001     | cust0005       | Tommy Sinaga        | Avatar Village, Blok C8 No. 888             |
|       6 | bdg-001     | cust0006       | Irwan Setianto      | Rukan Gunung Seribu, Blok O1 - No. 1        |
|       7 | jkt-001     | cust0007       | Agus Cahyono        | Jalan Motivasi Tinggi, Blok F4 - No. 8      |
|       8 | jkt-001     | cust0008       | Maria Sirait        | Cluster Akasia Residence, Blok AA No. 3     |
|       9 | jkt-002     | cust0009       | Ir. Ita Nugraha     | Perumahan Sagitarius, Gang Kelapa No. 6     |
|      10 | bdg-001     | cust0010       | Djoko Wardoyo, Drs. | Bukit Pintar Data, Blok A1 No. 1            |

2. ms_produk

| no_urut | kode_produk | nama_produk                        | harga  |
|---------|-------------|------------------------------------|--------|
|       1 | prod-01     | Kotak Pensil DQLab                 |  60500 |
|       2 | prod-02     | Flashdisk DQLab 64 GB              |  55000 |
|       3 | prod-03     | Gift Voucher DQLab 100rb           | 100000 |
|       4 | prod-04     | Flashdisk DQLab 32 GB              |  40000 |
|       5 | prod-05     | Gift Voucher DQLab 250rb           | 250000 |
|       6 | prod-06     | Pulpen Multifunction + Laser DQLab |  92500 |
|       7 | prod-07     | Tas Travel Organizer DQLab         |  48000 |
|       8 | prod-08     | Gantungan Kunci DQLab              |  15800 |
|       9 | prod-09     | Buku Planner Agenda DQLab          |  92000 |
|      10 | prod-10     | Sticky Notes DQLab 500 sheets      |  55000 |

3. tr_penjualan

| kode_transaksi | tanggal_transaksi   | kode_cabang | kode_pelanggan | no_urut | kode_prod | harga  |
|----------------|---------------------|-------------|----------------|---------|-----------|--------|
| tr-0001        | 2019-06-07 10:09:46 | jkt-001     | cust0007       |       1 | prod-01   |  62000 |
| tr-0001        | 2019-06-07 10:09:46 | jkt-001     | cust0007       |       2 | prod-03   |  95000 |
| tr-0001        | 2019-06-07 10:09:46 | jkt-001     | cust0007       |       3 | prod-09   |  93000 |
| tr-0001        | 2019-06-07 10:09:46 | jkt-001     | cust0007       |       4 | prod-04   |  40000 |
| tr-0002        | 2019-06-07 13:05:12 | jkt-001     | cust0001       |       1 | prod-03   |  95000 |
| tr-0002        | 2019-06-07 13:05:12 | jkt-001     | cust0001       |       2 | prod-10   |  55000 |
| tr-0002        | 2019-06-07 13:05:12 | jkt-001     | cust0001       |       3 | prod-07   |  48000 |
| tr-0003        | 2019-06-08 22:09:46 | jkt-001     | cust0004       |       1 | prod-02   |  55000 |
| tr-0004        | 2019-06-08 22:09:46 | jkt-001     | cust0004       |       1 | prod-10   |  55000 |
| tr-0004        | 2019-06-08 22:09:46 | jkt-001     | cust0004       |       2 | prod-04   |  40000 |
| tr-0005        | 2019-06-09 22:09:46 | jkt-001     | cust0003       |       1 | prod-09   |  92000 |
| tr-0005        | 2019-06-09 22:09:46 | jkt-001     | cust0003       |       2 | prod-01   |  62500 |
| tr-0005        | 2019-06-09 22:09:46 | jkt-001     | cust0003       |       3 | prod-04   |  41000 |
| tr-0006        | 2019-06-09 22:09:46 | jkt-001     | cust0008       |       1 | prod-05   | 250000 |
| tr-0006        | 2019-06-09 22:09:46 | jkt-001     | cust0008       |       2 | prod-08   |  15800 |

4. tr_penjualan_detail

| kode_transaksi | kode_produk | qty  | harga_satuan |
|----------------|-------------|------|--------------|
| tr-0001        | prod-04     |    3 |        40000 |
| tr-0001        | prod-02     |    1 |        55000 |
| tr-0002        | prod-08     |    2 |        15800 |
| tr-0003        | prod-10     |    1 |        55000 |
| tr-0004        | prod-09     |    1 |        92000 |
| tr-0005        | prod-06     |    1 |        92500 |
| tr-0006        | prod-08     |    2 |        15800 |
| tr-0007        | prod-08     |    2 |        15800 |
| tr-0008        | prod-07     |    1 |        50000 |
| tr-0009        | prod-01     |    2 |        62500 |
| tr-0010        | prod-04     |    3 |        48000 |
| tr-0010        | prod-08     |    1 |        15800 |
| tr-0010        | prod-04     |    1 |        40000 |

----

#### Produk DQLab Mart
Mengacu pada table ms_produk, tampilkan daftar produk yang memiliki harga antara 50.000 and 150.000.</br>
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.
```sql
SELECT 
  no_urut, 
  kode_produk, 
  nama_produk, 
  harga 
FROM 
  ms_produk
WHERE 
  harga BETWEEN 50000 AND 150000;
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

#### Thumb drive di DQLab Mart
Tampilkan semua produk yang mengandung kata Flashdisk.</br>
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.

```sql
SELECT 
  no_urut, 
  kode_produk, 
  nama_produk, 
  harga 
FROM 
  ms_produk 
WHERE 
  nama_produk LIKE '%flashdisk%';
```
<details>
<summary markdown="span">Output :</summary>
| no_urut | kode_produk | nama_produk           | harga |
|---------|-------------|-----------------------|-------|
|       2 | prod-02     | Flashdisk DQLab 64 GB | 55000 |
|       4 | prod-04     | Flashdisk DQLab 32 GB | 40000 |
<details>

----

#### Pelanggan Bergelar
Tampilkan hanya nama-nama pelanggan yang hanya memiliki gelar-gelar berikut: S.H, Ir. dan Drs.</br>
Nama kolom yang harus ditampilkan: no_urut, kode_pelanggan, nama_pelanggan, dan alamat.</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.

```sql
SELECT 
  * 
FROM 
  ms_pelanggan 
WHERE 
  nama_pelanggan like "%S.H." OR
  nama_pelanggan like "Ir.%" OR
  nama_pelanggan like "%Drs." 
```

<details>
<summary markdown="span">Output :</summary>
| no_urut | kode_cabang | kode_pelanggan | nama_pelanggan      | alamat                                  |
|---------|-------------|----------------|---------------------|-----------------------------------------|
|       1 | jkt-001     | cust0001       | Eva Novianti, S.H.  | Vila Sempilan, No. 67                   |
|       9 | jkt-002     | cust0009       | Ir. Ita Nugraha     | Perumahan Sagitarius, Gang Kelapa No. 6 |
|      10 | bdg-001     | cust0010       | Djoko Wardoyo, Drs. | Bukit Pintar Data, Blok A1 No. 1        |
<details>
  
----

#### Mengurutkan Nama Pelanggan
Tampilkan nama-nama pelanggan dan urutkan hasilnya berdasarkan kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z).</br>
Nama kolom yang harus ditampilkan: nama_pelanggan.</br>
Semua table di atas sudah tersedia, Anda tinggal menulis query Anda dalam Code Editor.
