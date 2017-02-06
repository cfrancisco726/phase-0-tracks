# vi employee_update_trg.sql
create trigger schedule_update_trg after update on schedule
begin
  update schedule set updatedon = datetime('NOW') where rowid = new.rowid;
end;