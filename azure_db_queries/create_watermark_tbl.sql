-- CREATE WATERMARK TABLE --

create table watermark_tbl
(last_load varchar(200));

-- INSERT MINIMUM VALUE --

insert into watermark_tbl
values('DT00000')