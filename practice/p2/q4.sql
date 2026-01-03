SELECT shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS rieki 
FROM shohin 
WHERE ( shohin_bunrui = '事務用品'
OR shohin_bunrui = 'キッチン用品')
AND hanbai_tanka * 0.9 - shiire_tanka > 100 ;