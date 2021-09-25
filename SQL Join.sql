--SQL nomor 1
select  
a.nim,
a.nama,
extract (year from age (current_date, a.ttl)) AS umur,
max(c.semester) as semester
from z_mahasiswa as a 
left join z_nilai as b 
	on a.nim=b.nim 
		left join z_kuliah as c
		on b.kode_mk = c.kode_mk 
group by a.nim, a.nama

with tablenamamk as (select distinct nama_mk, kode_mk from sandbox.batch_kma.z_kuliah)
select 
a.nim,
a.nama,
max (b.nilai_akhir) AS nilai_tertinggi,
(c.nama_mk)
from z_mahasiswa as a
left join z_kuliah as b 
on a.nim=b.nim
left join tablenamamk as c 
on b.kode_mk=c.nama_mk
group by a.nim, c.nama_mk, c.kode_mk

-- SQL nomor 2
WITH tablemaya AS(
SELECT
	a.nim, a.nama,
	max(b.nilai_akhir) AS nilai_tertinggi
FROM
	z_mahasiswa AS a 
LEFT JOIN
	z_nilai AS b 
	ON a.nim = b.nim 
	GROUP BY a.nim)
SELECT c.nim, c.nama, c.nilai_tertinggi, e.nama_mk
FROM
	tablemaya AS c	
LEFT JOIN
	z_nilai AS d ON c.nim = d.nim 
LEFT JOIN
	z_kuliah AS e ON d.kode_mk = e.kode_mk
WHERE 
	d.nilai_akhir = c.nilai_tertinggi
	
