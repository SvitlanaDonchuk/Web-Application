delete from user_role;
delete from usr;

insert into usr (id, active,  password, username) values
(1, true, '$2a$08$o90sjbKxksZuURLZr2nikuOiA56aNF.XE4K7txmzrluZKKwz0BOP2', 'admin'),
(2, true, '$2a$08$bncg6UQbAmJaS5eMrxkrTOBxNnoUEvXgZy1KZAbeA80S/WMeEy5Pq', 'user');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');
