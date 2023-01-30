---Aktifkan Database Mina Ressort Hotel
use ressort_mina
select * from RessortHotelDataset

alter table RessortHotelDataset
alter column total float
alter table RessortHotelDataset
alter column tanggal_transaksi date

---Fungsi Agregate SUM,COUNT,AVG,MIN,MAX,GROUP BY,HAVING

---SUM untuk menjumlahkan suatu kolom tertentu 
select sum(lama_inap) as Total_InapRessortHotel_BulanJuli 
from RessortHotelDataset

select sum(total) as Total_BayarRessortHotel_BulanJuli 
from RessortHotelDataset

---COUNT untuk menghitung jumlah baris dalam sebuah tabel
select count(*) as Transaksi_BayarCash 
from RessortHotelDataset 
where sistem_boking = '"Langsung"'

select count(*) as Transaksi_CashVIP 
from RessortHotelDataset 
where sistem_boking = '"Langsung"' and tipe_kamar = '"VIP"'

---AVG untuk menghitung nilai rata-rata dari suatu kolom tertentu 
select AVG(lama_inap) as ratarata_inapVIP 
from RessortHotelDataset where tipe_kamar = '"VIP"'

select AVG(total) as ratarata_totaltransaksi_$ 
from RessortHotelDataset

---MIN untuk mengetahui nilai terkecil dari sebuah kolom tertentu 
---MAX untuk mengetahui nilai terbesar dari sebuah kolom tertentu
select min(total) as min_totalVIP 
from RessortHotelDataset where tipe_kamar = '"VIP"'

select max(lama_inap) as min_inapVIP 
from RessortHotelDataset where tipe_kamar = '"VIP"'

---GROUP BY untuk mengelompokkan satu/lebih field yang memiliki nilai sama untuk membentuk satu kelompok.
select ID,count(lama_inap),sum(total) as Total_TransaksiPelanggan_ID 
from RessortHotelDataset group by ID

select sistem_boking,tipe_tamu, sum(total) as Total_TransaksiPelanggan_ID 
from RessortHotelDataset group by sistem_boking,tipe_tamu

---HAVING untuk melengkapi statement SELECT mendefinisikan sebuah kondisi 
Having memiliki kesamaan dengan fungsi Where

select negara,sistem_boking,tipe_tamu, sum(total) as Total_TransaksiPelanggan_ID 
from RessortHotelDataset 
group by negara,sistem_boking,tipe_tamu
Having negara = '"ESP"' 

select negara,sistem_boking,tipe_kamar, sum(total) as Total_TransaksiPelanggan_ID 
from RessortHotelDataset 
group by negara,sistem_boking,tipe_kamar
Having sum(total) > 1000