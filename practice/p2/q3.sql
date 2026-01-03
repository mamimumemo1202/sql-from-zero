SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM shohin WHERE NOT hanbai_tanka - shiire_tanka < 500; 

SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM shohin WHERE shiire_tanka + 500 <= hanbai_tanka ;
