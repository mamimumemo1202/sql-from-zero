-- 実行できない。VALUEに対して*が使えるかがわからん

INSERT INTO shohin VALUE * FROM shohin ;

-- 実行できない。すべてをコピーするってことは主キーまでコピーすることになるから
-- もししたければ、

INSERT INTO shohin (shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
SELECT shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
FROM shohin ;
