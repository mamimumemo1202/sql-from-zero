CREATE TABLE Address_book (
    register_no INTEGER NOT NULL,
    nama VARCHAR(128) NOT NULL,
    address VARCHAR(256) NOT NULL,
    phone_no CHAR(10),
    email_address CHAR(20),
    postal_code CHAR(8) NOT NULL,
    PRIMARY KEY(register_no)
)