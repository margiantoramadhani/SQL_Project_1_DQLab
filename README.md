#### Data Engineer Challenge with SQL

----

#### Dataset project

<details>
<summary markdown="span">ms_pelanggan :</summary>
	
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

</details>

<details>
<summary markdown="span">ms_produk :</summary>
	
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

</details>

<details>
<summary markdown="span">tr_penjualan :</summary>
	
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

</details>

<details>
<summary markdown="span">tr_penjualan_detail :</summary>
	
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

</details>

----

#### Produk DQLab Mart
Mengacu pada table ms_produk, tampilkan daftar produk yang memiliki harga antara 50.000 and 150.000.</br>
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.

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
Nama kolom yang harus ditampilkan: no_urut, kode_produk, nama_produk, dan harga.

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
  
</details>

----

#### Pelanggan Bergelar
Tampilkan hanya nama-nama pelanggan yang hanya memiliki gelar-gelar berikut: S.H, Ir. dan Drs.</br>
Nama kolom yang harus ditampilkan: no_urut, kode_pelanggan, nama_pelanggan, dan alamat.

```sql
SELECT 
	* 
FROM 
	ms_pelanggan 
WHERE 
	nama_pelanggan like "%S.H." OR
	nama_pelanggan like "Ir.%" OR
	nama_pelanggan like "%Drs.";
```

<details>
<summary markdown="span">Output :</summary>
	
| no_urut | kode_cabang | kode_pelanggan | nama_pelanggan      | alamat                                  |
|---------|-------------|----------------|---------------------|-----------------------------------------|
|       1 | jkt-001     | cust0001       | Eva Novianti, S.H.  | Vila Sempilan, No. 67                   |
|       9 | jkt-002     | cust0009       | Ir. Ita Nugraha     | Perumahan Sagitarius, Gang Kelapa No. 6 |
|      10 | bdg-001     | cust0010       | Djoko Wardoyo, Drs. | Bukit Pintar Data, Blok A1 No. 1        |
	
</details>
  
----

#### Mengurutkan Nama Pelanggan
Tampilkan nama-nama pelanggan dan urutkan hasilnya berdasarkan kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z).</br>
Nama kolom yang harus ditampilkan: nama_pelanggan.

```sql
SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
ORDER BY 
	nama_pelanggan 
ASC;
```

<details>
<summary markdown="span">Output :</summary>

| nama_pelanggan      |
|---------------------|
| Agus Cahyono        |
| Djoko Wardoyo, Drs. |
| Eva Novianti, S.H.  |
| Heidi Goh           |
| Ir. Ita Nugraha     |
| Irwan Setianto      |
| Jokolono Sukarman   |
| Maria Sirait        |
| Tommy Sinaga        |
| Unang Handoko       |

</details>

----

#### Mengurutkan Nama Pelanggan Tanpa Gelar
Tampilkan nama-nama pelanggan dan urutkan hasilnya berdasarkan kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z), 
namun gelar tidak boleh menjadi bagian dari urutan. Contoh: Ir. Agus Nugraha harus berada di atas Heidi Goh.</br>
Nama kolom yang harus ditampilkan: nama_pelanggan.

```sql
SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
ORDER BY
	CASE WHEN LEFT(nama_pelanggan,3) = 'ir.'
	THEN SUBSTRING(nama_pelanggan,5,300)
	ELSE nama_pelanggan
	END
ASC;
```

<details>
<summary markdown="span">Output :</summary>

| nama_pelanggan      |
|---------------------|
| Agus Cahyono        |
| Djoko Wardoyo, Drs. |
| Eva Novianti, S.H.  |
| Heidi Goh           |
| Irwan Setianto      |
| Ir. Ita Nugraha     |
| Jokolono Sukarman   |
| Maria Sirait        |
| Tommy Sinaga        |
| Unang Handoko       |

</details>

----

#### Nama Pelanggan yang Paling Panjang
Tampilkan nama pelanggan yang memiliki nama paling panjang. Jika ada lebih dari 1 orang yang memiliki panjang nama yang sama, tampilkan semuanya.</br>
Nama kolom yang harus ditampilkan: nama_pelanggan.

```sql
SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
WHERE 
	LENGTH(nama_pelanggan) IN (SELECT MAX(LENGTH (nama_pelanggan))
	FROM ms_pelanggan);
```

<details>
<summary markdown="span">Output :</summary>

| nama_pelanggan      |
|---------------------|
| Djoko Wardoyo, Drs. |

</details>

----

#### Nama Pelanggan yang Paling Panjang dengan Gelar
Tampilkan nama orang yang memiliki nama paling panjang (pada row atas), dan nama orang paling pendek (pada row setelahnya). 
Gelar menjadi bagian dari nama. Jika ada lebih dari satu nama yang paling panjang atau paling pendek, harus ditampilkan semuanya.</br>
Nama kolom yang harus ditampilkan: nama_pelanggan.

```sql
SELECT 
	nama_pelanggan 
FROM
	ms_pelanggan
WHERE 
	LENGTH(nama_pelanggan) IN (SELECT MAX(LENGTH(nama_pelanggan))FROM ms_pelanggan)
	OR
	LENGTH(nama_pelanggan) IN (SELECT MIN(LENGTH(nama_pelanggan))FROM ms_pelanggan)
ORDER BY 
	LENGTH(nama_pelanggan)
DESC;
```

<details>
<summary markdown="span">Output :</summary>

| nama_pelanggan      |
|---------------------|
| Djoko Wardoyo, Drs. |
| Heidi Goh           |

</details>

----

#### Kuantitas Produk yang Banyak Terjual
Tampilkan produk yang paling banyak terjual dari segi kuantitas. Jika ada lebih dari 1 produk dengan nilai yang sama, tampilkan semua produk tersebut.</br>
Nama kolom yang harus ditampilkan: kode_produk, nama_produk,total_qty.

```sql
SELECT
	ms_produk.kode_produk,
	ms_produk.nama_produk,
	SUM(tr_penjualan_detail.qty) AS total_qty
FROM
	ms_produk
JOIN
	tr_penjualan_detail
ON
	ms_produk.kode_produk=tr_penjualan_detail.kode_produk
GROUP BY
	ms_produk.kode_produk,
	ms_produk.nama_produk
HAVING
	total_qty=7;
```

<details>
<summary markdown="span">Output :</summary>

| kode_produk | nama_produk           | total_qty |
|-------------|-----------------------|-----------|
| prod-04     | Flashdisk DQLab 32 GB |         7 |
| prod-08     | Gantungan Kunci DQLab |         7 |

</details>

----

#### Pelanggan Paling Tinggi Nilai Belanjanya
Siapa saja pelanggan yang paling banyak menghabiskan uangnya untuk belanja? 
Jika ada lebih dari 1 pelanggan dengan nilai yang sama, tampilkan semua pelanggan tersebut.</br>
Nama kolom yang harus ditampilkan: kode_pelanggan, nama_pelanggan, total_harga.

```sql
SELECT
	a.kode_pelanggan,
	a.nama_pelanggan,
	sum(c.harga_satuan*c.qty) as total_harga
FROM
	ms_pelanggan a
	JOIN tr_penjualan b ON a.kode_pelanggan=b.kode_pelanggan
	JOIN tr_penjualan_detail c ON b.kode_transaksi=c.kode_transaksi
GROUP BY 
	a.kode_pelanggan,
	a.nama_pelanggan
ORDER BY
	total_harga desc limit 1;
```

<details>
<summary markdown="span">Output :</summary>

| kode_pelanggan | nama_pelanggan | total_harga |
|----------------|----------------|-------------|
| cust0007       | Agus Cahyono   |      700000 |

</details>

----

#### Pelanggan yang Belum Pernah Berbelanja
Tampilkan daftar pelanggan yang belum pernah melakukan transaksi.</br>
Nama kolom yang harus ditampilkan: kode_pelanggan, nama_pelanggan, alamat.

```sql
SELECT
	a.kode_pelanggan,
	a.nama_pelanggan,
	a.alamat
FROM 
	ms_pelanggan a
WHERE 
	a.kode_pelanggan NOT IN (SELECT kode_pelanggan FROM tr_penjualan)
```

<details>
<summary markdown="span">Output :</summary>

| kode_pelanggan | nama_pelanggan      | alamat                                  |
|----------------|---------------------|-----------------------------------------|
| cust0002       | Heidi Goh           | Ruko Sawit Permai 72 No. 1              |
| cust0005       | Tommy Sinaga        | Avatar Village, Blok C8 No. 888         |
| cust0006       | Irwan Setianto      | Rukan Gunung Seribu, Blok O1 - No. 1    |
| cust0009       | Ir. Ita Nugraha     | Perumahan Sagitarius, Gang Kelapa No. 6 |
| cust0010       | Djoko Wardoyo, Drs. | Bukit Pintar Data, Blok A1 No. 1        |

</details>

----

#### Transaksi Belanja dengan Daftar Belanja lebih dari 1
Tampilkan transaksi-transaksi yang memiliki jumlah item produk lebih dari 1 jenis produk. Dengan lain kalimat, 
tampilkan transaksi-transaksi yang memiliki jumlah baris data pada table tr_penjualan_detail lebih dari satu.</br>
Nama kolom yang harus ditampilkan:  kode_transaksi, kode_pelanggan, nama_pelanggan, tanggal_transaksi, jumlah_detail

```sql
SELECT
	a.kode_transaksi,
	a.kode_pelanggan,
	b.nama_pelanggan,
	a.tanggal_transaksi,
	count(c.kode_produk) as jumlah_detail
FROM
	tr_penjualan a
JOIN 
	ms_pelanggan b ON a.kode_pelanggan=b.kode_pelanggan 
JOIN 
	tr_penjualan_detail c ON a.kode_transaksi=c.kode_transaksi
GROUP BY 
	a.kode_transaksi,
	a.kode_pelanggan,
	b.nama_pelanggan,
	a.tanggal_transaksi
HAVING 
	COUNT(c.kode_produk)>1
```

<details>
<summary markdown="span">Output :</summary>

| kode_transaksi | kode_pelanggan | nama_pelanggan     | tanggal_transaksi   | jumlah_detail |
|----------------|----------------|--------------------|---------------------|---------------|
| tr-0001        | cust0007       | Agus Cahyono       | 2019-06-07 10:09:46 |             8 |
| tr-0002        | cust0001       | Eva Novianti, S.H. | 2019-06-07 13:05:12 |             3 |
| tr-0004        | cust0004       | Jokolono Sukarman  | 2019-06-08 22:09:46 |             2 |
| tr-0005        | cust0003       | Unang Handoko      | 2019-06-09 22:09:46 |             3 |
| tr-0006        | cust0008       | Maria Sirait       | 2019-06-09 22:09:46 |             2 |

</details>





