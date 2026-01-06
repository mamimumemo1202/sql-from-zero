INSERT INTO ShohinSaeki
SELECT (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka) 
FROM shohin ;

-- SELECTの括弧はいらない
-- 全カラムの値をINSERTするとしても、カラムは明記したほうがいいかな？