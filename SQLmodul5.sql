---Aktifkan database Hotel Ressort Mina
use ressort_mina
select * into MinaRessort from RessortHotelDataset
select * into MinaCity from CityHotelDataset

---Menghapus Duplicate Rows
with RessortMina as
(select *,ROW_NUMBER()over(partition by ID order by ID) 
	as RowNumber 
	from MinaRessort)
delete from RessortMina where RowNumber > 1

with CityMina as
(select *,ROW_NUMBER()over(partition by ID order by ID) 
	as RowNumber 
	from MinaCity)
delete from CityMina where RowNumber > 1

---Memilih Variabel untuk fungsi join
select ID,sistem_boking,tipe_kamar into RessortHotel from MinaRessort
select ID,keterangan,total into CityHotel from MinaCity

---INNER JOIN
select RessortHotel.ID,sistem_boking,tipe_kamar,keterangan,total 
	from RessortHotel inner join 
	CityHotel on RessortHotel.ID = CityHotel.ID

---LEFT JOIN
select RessortHotel.ID,sistem_boking,tipe_kamar,keterangan,total 
	from RessortHotel left join 
	CityHotel on CityHotel.ID = RessortHotel.ID
	order by total desc

---RIGHT JOIN
select RessortHotel.ID,sistem_boking,tipe_kamar,keterangan,total 
	from RessortHotel right join 
	CityHotel on RessortHotel.ID = CityHotel.ID
	order by total desc

---FULL OUTER JOIN
select RessortHotel.ID,sistem_boking,tipe_kamar,keterangan,total 
	from RessortHotel full outer join 
	CityHotel on RessortHotel.ID = CityHotel.ID
	where tipe_kamar = '"VIP"'