---Import data Hotel Mina Ressort dan Mina City dalam database ressort_mina
select * from ressort_mina.dbo.RessortHotelDataset
select * from ressort_mina.dbo.CityHotelDataset

---Aktifkan data Hotel Mina Bali2
use hotel_mina_bali2
select * from daftar_tamu

---Character Function
select LOWER(nama) from daftar_tamu
select UPPER(nama) from daftar_tamu

select SUBSTRING ('tugaspraktikum@uma.com',1,14)
select CHARINDEX ('@','tugaspraktikum@uma.com')
select RIGHT ('tugaspraktikum@uma.com',7)
select LEFT ('tugaspraktikum@uma.com',14)
select LEN ('tugaspraktikum') as jlh_karakter , REVERSE('tugaspraktikum') as rename_karakter , REPLICATE('ingat tugas ',3) as deadline_yaa

---Membuat Table untuk fungsi LTRIM dan RTRIM 
create table namastaff
(
nama varchar(20) primary key
)
insert into namastaff(nama)values('RYAN          ')
insert into namastaff(nama)values('          DESY')
insert into namastaff(nama)values('KOKO      LISA')
insert into namastaff(nama)values('   SAYONARA   ')

select LTRIM(nama) from namastaff
select RTRIM(nama) from namastaff
select RTRIM(LTRIM(nama)) from namastaff

--- FUNGSI SPACE DAN REPLICATE untuk INFORMASI NO HP
select nama + SPACE(5) + handphone as INFORMASI from daftar_tamu
select nama, SUBSTRING(handphone,1,9) + REPLICATE('*',3) as no_handphone from daftar_tamu

---Sinkronisasi CHAR dan ASCII
select CHAR(99) -- c
select ASCII('c') -- 99

---ORDER BY Hotel Mina Bali
use ressort_mina ---Aktifkan Database ressort_mina
select * from RessortHotelDataset order by dewasa desc, lama_inap asc
use hotel_mina_bali2
select kode_tamu,handphone,total_kunjungan from daftar_tamu order by total_kunjungan desc
select * from daftar_tamu where tipe_pembayaran = 'cash' order by total_kunjungan desc