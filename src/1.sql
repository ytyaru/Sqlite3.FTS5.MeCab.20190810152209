create virtual table posts using fts5(title, content, tokenize = 'mecab');
insert into posts values('タイトル1', '本文1');
insert into posts values('タイトル2', '本文2');
insert into posts values('たいとる3', 'ほんぶん3');
insert into posts values('間違ったタイトルの書き方', '間違った本文の書き方');
insert into posts values('終わったタイトル', '終わった本文');
insert into posts values('English title 1', 'English content 1.');
insert into posts values('English title 2', 'English content 2.');
insert into posts values('english title 3', 'english content 3.');

select * from posts where posts match 'タイトル' order by rank;
SELECT highlight(posts, 0, '<b>', '</b>') FROM posts('タイトル');
