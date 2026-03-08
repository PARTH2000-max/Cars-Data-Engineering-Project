-- CREATE PROCEDURE FOR UPDATE WATERMARK VALUE --

create procedure update_watermark
	@last_load varchar(255)
as
begin
    begin transaction;
    update [dbo].[watermark_tbl]
    set last_load = @last_load
commit transaction;
end;
