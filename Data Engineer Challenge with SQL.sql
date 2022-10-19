# Produk DQLab Mart

SELECT 
	no_urut, 
	kode_produk, 
	nama_produk, 
	harga 
FROM 
	ms_produk
WHERE 
	harga BETWEEN 50000 AND 150000;

# Thumb drive di DQLab Mart

SELECT 
	no_urut, 
	kode_produk, 
	nama_produk, 
	harga 
FROM 
	ms_produk 
WHERE 
	nama_produk LIKE '%flashdisk%';

# Pelanggan Bergelar

SELECT 
	* 
FROM 
	ms_pelanggan 
WHERE 
	nama_pelanggan like "%S.H." OR
	nama_pelanggan like "Ir.%" OR
	nama_pelanggan like "%Drs.";

# Mengurutkan Nama Pelanggan

SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
ORDER BY 
	nama_pelanggan 
ASC;

# Mengurutkan Nama Pelanggan Tanpa Gelar

SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
ORDER BY
	CASE WHEN LEFT(nama_pelanggan,3) = 'ir.'
	THEN SUBSTRING(nama_pelanggan,5,300)
	ELSE nama_pelanggan
	END ASC;

# Nama Pelanggan yang Paling Panjang

SELECT 
	nama_pelanggan 
FROM 
	ms_pelanggan 
WHERE 
	LENGTH(nama_pelanggan) IN (SELECT MAX(LENGTH (nama_pelanggan))
	FROM ms_pelanggan);

# Nama Pelanggan yang Paling Panjang dengan Gelar

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

# Kuantitas Produk yang Banyak Terjual

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
    
# Pelanggan Paling Tinggi Nilai Belanjanya

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

# Pelanggan yang Belum Pernah Berbelanja

SELECT
	a.kode_pelanggan,
	a.nama_pelanggan,
	a.alamat
FROM 
	ms_pelanggan a
WHERE 
	a.kode_pelanggan NOT IN (SELECT kode_pelanggan FROM tr_penjualan);

# Transaksi Belanja dengan Daftar Belanja lebih dari 1

SELECT
	a.kode_transaksi,
	a.kode_pelanggan,
	b.nama_pelanggan,
	a.tanggal_transaksi,
	COUNT(c.kode_produk) as jumlah_detail
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
	COUNT(c.kode_produk)>1;
