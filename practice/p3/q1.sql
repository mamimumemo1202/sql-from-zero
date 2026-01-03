SELECT shohin_id, SUM(shohin_mei)
FROM shohin
GROUP BY shohin_bunrui
WHERE torokubi > '2009-09-01'

-- SUM(shohin_mei)がおかしい
-- WHEREとGROUP BYが逆
-- GROUP BY shohin_bunruiをしたのにSELECTでshohin_bunruiが集約キーとして設定してない