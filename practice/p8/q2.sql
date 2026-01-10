SELECT 
shohin_id, 
shohin_mei, 
hanbai_tanka, 
torokubi,
SUM(hanbai_tanka) OVER (ORDER BY torokubi) AS current_hanbai_tanka_sum
FROM shohin
ORDER BY CASE WHEN torokubi IS NULL THEN 0 ELSE 1 END, torokubi;

-- DATE型に値を入れるため、必ずDATE型を明示する必要がある。1年1月1日にすることで強制的に先頭に持ってくる
SELECT 
shohin_id, 
shohin_mei, 
hanbai_tanka, 
torokubi,
SUM(hanbai_tanka) OVER (ORDER BY COALESCE(torokubi, CAST('0001-01-01' AS DATE))) AS current_hanbai_tanka_sum
FROM shohin;


-- NULLS FIRSTで先頭に持ってこれる
SELECT 
shohin_id, 
shohin_mei, 
hanbai_tanka, 
torokubi,
SUM(hanbai_tanka) OVER (ORDER BY torokubi NULLS FIRST) AS current_hanbai_tanka_sum
FROM shohin ;
