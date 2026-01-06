CREATE VIEW AvgTankaByBunri (
    shohin_id, 
    shohin_mei, 
    shohin_bunrui, 
    hanbai_tanka, 
    avg_hanbai_tanka)
AS
SELECT 
    shohin_id, 
    shohin_mei, 
    shohin_bunrui, 
    hanbai_tanka, 
    (SELECT AVG(hanbai_tanka)
    FROM shohin AS S1
    WHERE S1.shohin_bunrui = S2.shohin_bunrui
    GROUP BY shohin_bunrui)
FROM shohin AS S2


/* 
外部サイト引用
以下の順番でSQLが実行される
FROM -> JOIN -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT

Q: 最後のFROMは相関サブクエリの中で使えるのか
A: 使える。
    まず、最後のFROMから動くため、S2は既にある状態で相関サブクエリに入る。
    つまり、S2のshohin_bunruiごと平均値を求める感じ？
*/


-- 元のテーブルのほうがS1のほうがわかりやすい
-- CREATE VIEWでカラムは書かんくてもSELECTがそのままカラムになるからOK、計算式とか入る場合は明記したほうが吉。
