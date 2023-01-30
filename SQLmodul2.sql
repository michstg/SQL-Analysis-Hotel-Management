---Buat Database
create database hotel_mina_bali
---Aktifkan Database
use hotel_mina_bali

---CREATE ,membuat Tabel Daftar Tamu Hotel
create table daftar_tamu
(
nama char(20) not null,
handphone varchar(16) not null,
kode_tamu char(6) not null,
kode_kamar char(6) not null,
kode_bayar char(6) not null,
tanggal_checkin datetime,
constraint tamu primary key (nama)
)

---ALTER DROP COLUMN
alter table daftar_tamu
alter column sistem_booking varchar(12)
alter table daftar_tamu
drop column sistem booking

---ALTER ,menambahkan kolom jeniskamar dan tanggal checkout pada Tabel Daftar Tamu Hotel
alter table daftar_tamu
add tanggal_checkout datetime, jenis_kamar varchar(12)
---menampilkan tabel daftar tamu hotel
select * from daftar_tamu

---CREATE ,membuat Tabel Kamar Hotel
create table kamar_hotel
(
jenis_kamar varchar(50) primary key,
harga_kamar int,
jumlah_kamar int
)

---DROP TABLE,menghapus tabel kamar hotel
drop table kamar_hotel
---DROP COLUMN,menghapus kolom kodetamu pada tabel Daftar Tamu Hotel
alter table daftar_tamu
drop column kode_tamu