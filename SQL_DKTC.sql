create database DKTC;
use DKTC;

drop database DKTC;

create table tblNhomMonHoc(
MaNhomMonHoc char(30) primary key,
TenNhomMonHoc nvarchar(50),
)
drop table tblNhomMonHoc;

create table tblSV(
MaSV char(10) primary key,
TenSV nvarchar(30),
MatKhau char(30),
MaNhomMonHoc char(30) foreign key references tblNhomMonHoc(MaNhomMonHoc) 
)
drop table tblSV;

create table tblMonHoc(
MaMon char(10) primary key,
TenMon nvarchar(50),
SoTC int,
MaNhomMonHoc char(30) foreign key references tblNhomMonHoc(MaNhomMonHoc) 
)
drop table tblMonHoc;

create table tblLopHP(
MaLopHP char(10) primary key,
MaMon char(10) foreign key references tblMonHoc(MaMon),
TenLopHP nvarchar(70),
SiSo int,
GiangVien nvarchar(30),
PhongHoc varchar(10),
TietHoc varchar(30),
)
drop table tblLopHP;

create table tblKQDangKi(
MaSV char(10) foreign key references tblSV(MaSV),
MaLopHP char(10) foreign key references tblMonHoc(MaMon)
)
drop table tblKQDangKi;

insert into tblNhomMonHoc values ('HTQL',N'Hệ thống thông tin quản lý');
insert into tblNhomMonHoc values ('KT',N'Kế toán');
insert into tblNhomMonHoc values ('DC',N'Đại cương');
select * from tblNhomMonHoc;
delete from tblNhomMonHoc;

insert into tblSV values('11201234',N'Nguyễn Thị Phương Thảo','123456','HTQL');
insert into tblSV values('11920343',N'Nguyễn Công Nguyên','123456','KT');
insert into tblSV values('11211343',N'Lê Vũ Quỳnh Trang','123456','HTQL');
select * from tblSV;
delete from tblSV;

insert into tblMonHoc values('PTUD',N'Phát triển các ứng dụng trong quản lý',3,'HTQL');
insert into tblMonHoc values('LTNC',N'Lập trình nâng cao',3,'HTQL');
insert into tblMonHoc values('UDCSDL',N'Ứng dụng CSDL',3,'HTQL');
insert into tblMonHoc values('NLKT',N'Nguyên lý kế toán',3,'DC');
insert into tblMonHoc values('THMLN',N'Triết học Mác - Lênin',3,'DC');
insert into tblMonHoc values('KTCT',N'Kinh tế chính trị',2,'DC');
insert into tblMonHoc values('KTQT',N'Kế toán quản trị',3,'KT');
insert into tblMonHoc values('KTDN',N'Kế toán doanh nghiệp',3,'KT');
insert into tblMonHoc values('KTTC',N'Kế toán tài chính',3,'KT');
select * from tblMonHoc;
delete from tblMonHoc;

insert into tblLopHP values('PTUD-01','PTUD',N'Phát triển các ứng dụng trong quản lý 01',60,'Trinh Hoai Son','A2-601','Thu 2, tiet 3-4');
insert into tblLopHP values('PTUD-02','PTUD',N'Phát triển các ứng dụng trong quản lý 02',60,'Trinh Hoai Son','A2-601','Thu 4, tiet 5-6');
insert into tblLopHP values('LTNC-01','LTNC',N'Lập trình nâng cao 01',40,'Nguyen Van Thu','A2-603','Thu 5, tiet 7-8');
insert into tblLopHP values('UDCSDL-01','UDCSDL',N'Ứng dụng CSDL 01',60,'Pham Van Minh','A2-610','Thu 4, tiet 5-6');
insert into tblLopHP values('UDCSDL-02','UDCSDL',N'Ứng dụng CSDL 02',60,'Pham Van Minh','A2-610','Thu 3, tiet 1-2');
insert into tblLopHP values('NLKT-01','NLKT',N'Nguyên lý kế toán 01',60,'Nguyen Thi Tuyet','D-105','Thu 6, tiet 7-8');
insert into tblLopHP values('NLKT-02','NLKT',N'Nguyên lý kế toán 02',60,'Tran Thi Huong','D-103','Thu 5, tiet 3-4');
insert into tblLopHP values('NLKT-03','NLKT',N'Nguyên lý kế toán 03',60,'Phung Van Huy','D-205','Thu 4, tiet 1-2');
insert into tblLopHP values('THMLN-01','THMLN',N'Triết học Mác - Lênin 01',60,'Nguyen Thi Hieu','C-101','Thu 4, tiet 1-2');
insert into tblLopHP values('THMLN-02','THMLN',N'Triết học Mác - Lênin 02',60,'Bui Thi Phuong','D-305','Thu 5, tiet 3-4');
insert into tblLopHP values('KTCT-01','KTCT',N'Kinh tế chính trị 01',60,'Tran Hoang Son','C-204','Thu 5, tiet 3-4');
insert into tblLopHP values('KTCT-02','KTCT',N'Kinh tế chính trị 02',60,'Cao Xuan Tu','C-201','Thu 6, tiet 1-2');
insert into tblLopHP values('KTQT-01','KTQT',N'Kế toán quản trị 01',60,'Tran Ngoc Quynh','D1-401','Thu 4, tiet 5-6');
insert into tblLopHP values('KTDN-01','KTDN',N'Kế toán doanh nghiệp',60,'Le Huyen Tram','D2-306','Thu 3, tiet 5-6');
insert into tblLopHP values('KTTC-01','KTTC',N'Kế toán tài chính',60,N'Nguyễn Quang Chiến','D2-306','Thu 5, tiet 1-2');
select * from tblLopHP;
delete from tblLopHP;







