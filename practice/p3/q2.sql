SELECT shohin_bunrui, SUM(hanbai_tanka) AS hanbai_tanka_sum, SUM(shiire_tanka) AS shiire_tanka_sum
FROM shohin
GROUP BY shohin_bunrui
HAVING SUM(shiire_tanka) * 1.5 <= SUM(hanbai_tanka) ;