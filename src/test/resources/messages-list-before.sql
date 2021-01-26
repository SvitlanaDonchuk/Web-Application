delete from message;

insert into message(id, text, tag, user_id) values
(1, 'first', 'my-tag', 1),
(2, 'second', 'anotherTag', 1),
(3, 'third', 'more', 1),
(4, 'fourth', 'my-tag', 1);

alter sequence hibernate_sequence restart with 10;