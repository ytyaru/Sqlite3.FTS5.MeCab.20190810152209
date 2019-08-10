CREATE VIRTUAL TABLE t1 USING fts5(x, tokenize = 'mecab');
insert into t1 values('ytyaruがMeCabで形態素解析をする。');
insert into t1 values('これはytyaruがMeCabを使った偉業である。');
select * from t1('使った');

