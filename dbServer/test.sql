insert into memberlist (
member_number     ,
member_id         ,
password          ,
name_surname      ,
name_name         ,
name_kana_surname ,
name_kana_name    ,
email             ,
register_date     ,
delete_date       ,
update_date       ,
history_sequence
) values (
0,
'TestUser',
1234,
'山田',
'太郎',
'ヤマダ',
'タロウ',
'test@gmail.com',
transaction_timestamp(),
transaction_timestamp(),
transaction_timestamp(),
0
);

insert into dinelist (
register_member_id       ,
dine_sequence_per_member ,
dine_name                ,
dine_url                 ,
dine_address             ,
dine_access              ,
open_close_time
) values (
0,
1,
'test restaurant',
'http://restaurant.co.jp',
'東京都港区',
'東京駅から徒歩3分',
'9:00~15:00'
);

insert into dine_register_numberlist (
register_member_id   ,
dine_register_number
) values (
0,
1
);

