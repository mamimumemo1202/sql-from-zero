ALTER TABLE address_book ADD COLUMN postal_code CHAR(8) NOT NULL;

-- ALTER TABLEは既存のレコードに影響がある・NOT NULLなので初期値が必要 NOT NULL DEFAULT '000-0000';