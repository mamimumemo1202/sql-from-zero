UPDATE ShohinSaeki
SET hanbai_tanka = 3000
    saeki = hanbai_tanka - shiire_tanka
WHERE shohin_mei = 'カッターシャツ' ;

-- COMMITされるまでレコードは変更されないから、上記は誤り

UPDATE ShohinSaeki
SET hanbai_tanka = 3000
WHERE shohin_mei = 'カッターシャツ' ;

UPDATE ShohinSaeki
SET saeki = hanbai_tanka - shiire_tanka
WHERE shohin_mei = 'カッターシャツ' ;