--memilih semua kolom
select 
	employee_id ,
	first_name ,
	email ,
	salary ,
	phone_number 
from sandbox.datasource.employees e

--challange 2
select
	*
from datasource.jobs j ; 
--membuat table menggunakan script SQL
create table sandbox.batch_kma.kelompokmaya_users(
id INT,
nama varchar, 
birthdate DATE, 
ktp BIGINT, 
badge VARCHAR
)
--isi table user
insert into sandbox.batch_kma.kelompokmaya_users values
(1,'Maya','3-3-2001',123123123,'Mahasiswa'),
(2,'ichsan','4-3-2001',126723123,'Mahasiswa'),
(3,'aji','8-3-2001',123128923,'Mahasiswa'),
(4,'Elsa','8-9-2000',12459889,'Mahasiswa')
--isi tabel cuma beberapa kolom tertentu
insert into sandbox.batch_kma.kelompokmaya_users (id,nama,badge) values
(5,'Berryl','1212312312')


create table sandbox.batch_kma.kelompok1survivor_users(
id INT,
nama varchar, 
jurusan varchar, 
asal varchar, 
JK VARCHAR
)

update sandbox.batch_kma.kelompokmaya_users 
set birthdate ='3-4-2000'
where id =5

--drop atau tambah kolom
alter table sandbox.batch_kma.kelompokmaya_users add alamat varchar;
alter table sandbox.batch_kma.kelompokmaya_users add pekerjaan varchar;

delete from sandbox.batch_kma.kelompokmaya_users where id=5;

truncate table sandbox.batch_kma.kelompokmaya_users 

drop table sandbox.batch_kma.kelompokmaya_users

select * from sandbox.batch_kma.kelompokmaya_users ku limit 2;
select distinct nama from sandbox.batch_kma.kelompokmaya_users ku ;
select 2<3

select 'berryl' like '%er%'
select from employee where emp_name='Indro'
