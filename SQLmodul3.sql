create database hotel_mina_bali2
create table daftar_tamu
(
nama char(20),
kode_tamu varchar(2),
handphone varchar(16),
kode_kamar char(6),
kode_bayar char(6),
total_kunjungan int,
tipe_pembayaran char(10),
constraint tamu primary key (nama)
)

---INSERT ,mengisi data Tabel Daftar Tamu Hotel
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Roberto','RB','081365737896','mina1','B021','2','cash')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Julius','JL','082266737997','mina2','C021','1','cash')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Agun','AG','087824349993','mina3','C021','2','cash')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Lewis','LA','082184492924','mina4','C021','6','kredit')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Syukur','SK','081374838229','mina5','C021','5','kredit')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Armando','AM','082384284421','mina6','B021','5','kredit')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Amar','MR','085242842942','mina7','C021','3','transfer')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Juan','JU','081383248183','mina8','C021','8','transfer')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Dimas','DM','082391314920','mina9','B021','1','cash')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Michael','MC','085212418014','mina10','C021','5','kredit')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Rani','RN','081365737896','mina11','B021','9','transfer')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Prameli','PM','082167347997','mina12','C021','2','transfer')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Anggie','AN','087724295993','mina13','C021','2','kredit')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Meylani','MY','082183539924','mina14','B021','4','cash')
insert into daftar_tamu(nama,kode_tamu,handphone,kode_kamar,kode_bayar,total_kunjungan,tipe_pembayaran)values('Rosa','RS','081522274667','mina15','C021','11','transfer')

---SELECT ,mengambil atau menampilkan data dari tabel Daftar Tamu Hotel
select * from daftar_tamu
select kode_tamu,total_kunjungan from daftar_tamu where total_kunjungan > '2'
select * from daftar_tamu where kode_bayar = 'C021' and total_kunjungan > '3'
select nama,handphone,kode_kamar from daftar_tamu where nama like 'A%'

select * into kreditcustomer from daftar_tamu where tipe_pembayaran = 'kredit'
select * from kreditcustomer

---UPDATE ,memodifikasi data dalam tabel Daftar Tamu Hotel
update daftar_tamu set nama = 'Anggi' where nama = 'Anggie'
update daftar_tamu set handphone = '081261067869',tipe_pembayaran = 'cash' where nama = 'Agun'

---DELETE ,menghapus data pada tabel tanpa menghapus tabel Daftar Tamu Hotel
delete from kreditcustomer where nama = 'Michael'
delete from daftar_tamu where tipe_pembayaran = 'kredit'
