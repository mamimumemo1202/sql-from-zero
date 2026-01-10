SELECT TS.tenpo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
UPDATE TenpoShohin
    SET TS.tenpo_id = '不明', TS.tenpo_mei = '不明'
    WHERE TS.tenpo_id IS NULL
    OR TS.tenpo_mei = IS NULL;

-- COALESCEを使う

SELECT COALESCE(TS.tenpo_id, '不明') AS tenpo_id,
       COALESCE(TS.tenpo_mei, '不明') AS tenpo_mei,
        S.shohin_id,
        S.shohin_mei,
        S.hanbai_tanka
FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS SELECT
ON TS.shohin_id = S.shohin_id
GROUP BY tenpo_id; 