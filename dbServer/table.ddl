create table if not exists memberlist (
member_number     INTEGER     ,
member_id         VARCHAR(32) ,
password          INTEGER     ,
name_surname      VARCHAR(64) ,
name_name         VARCHAR(64) ,
name_kana_surname VARCHAR(64) ,
name_kana_name    VARCHAR(64) ,
email             VARCHAR(128),
register_date     TIMESTAMP   ,
delete_date       TIMESTAMP   ,
update_date       TIMESTAMP   ,
history_sequence  INTEGER     ,
primary key (member_number)
);

create table if not exists dinelist (
register_member_id       INTEGER     ,
dine_sequence_per_member INTEGER     ,
dine_name                VARCHAR(128),
dine_url                 VARCHAR(512),
dine_address             VARCHAR(128),
dine_access              VARCHAR(128),
open_close_time          VARCHAR(128),
primary key (register_member_id, dine_sequence_per_member)
);

create table if not exists dine_register_numberlist (
register_member_id   INTEGER,
dine_register_number INTEGER,
primary key (register_member_id)
);

