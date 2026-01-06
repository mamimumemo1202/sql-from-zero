SELECT 
    shohin_id, 
    shohin_mei, 
    shohin_bunrui, 
    hanbai_tanka,
    (SELECT AVG(hanbai_tanka)
    FROM shohin) AS hanbai_tanka_all
FROM shohin ;

-- AVG(hanbai_tanka) AS hanbai_tanka_allと書けないのは集約関数で結果が１個しか取得されず、どこに紐づくかわからないから。
-- 別でSELECTしてそれを代入する形でそれぞれのレコードに入れられる