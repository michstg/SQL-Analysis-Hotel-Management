---Aktifkan database Hotel Ressort Mina
use ressort_mina

---Ganti Tipe Data tanggal_transaksi
alter table RessortHotelDataset
alter column tanggal_transaksi datetime

---SUBQUERIES berisi perintah SQL yang terdiri dari lebih dari satu perintah dan digunakan untuk mengambil data lebih dari satu tabel

select ID,tanggal_transaksi,total from RessortHotelDataset
	where tanggal_transaksi >
		(select max(total) from RessortHotelDataset
			where tanggal_transaksi = '2015-07-02')
			order by total desc

---UNION untuk mendapatkan himpunan gabungan dari dua buah himpunan yang ada (-Duplikat)
---UNION ALL (+Duplikat)

select * from RessortHotelDataset
union 
select * from CityHotelDataset

select sistem_boking,tipe_kamar,tipe_tamu from RessortHotelDataset
union
select tipe_tamu,tipe_kamar,sistem_boking from CityHotelDataset

---INTERSECT untuk memperoleh data  dari  dua  buah queri dimana data yang ditampilkan 
---INTERSECT = IRISAN DATA

select negara,sistem_boking,tipe_kamar,tipe_tamu,keterangan 
from RessortHotelDataset 
	intersect
select negara,sistem_boking,tipe_kamar,tipe_tamu,keterangan 
from CityHotelDataset

---Ganti Tipe Data total
alter table RessortHotelDataset
alter column total float
alter table CityHotelDataset
alter column total float

select * from 
(
select ID,lama_inap from RessortHotelDataset where total > 50
intersect
select ID,lama_inap from CityHotelDataset where total > 50 
) 
as IDTamu_lamainap order by lama_inap desc


---EXCEPT untuk mengembalikan sekumpulan nilai yang ada di tabel pertama, tetapi tidak ada pada tabel kedua

select ID,sistem_boking,tipe_kamar,tipe_tamu,keterangan 
from RessortHotelDataset 
	except
select ID,sistem_boking,tipe_kamar,tipe_tamu,keterangan 
from CityHotelDataset