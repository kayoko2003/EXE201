create table dbo.Wallet
(
    id      varchar(50)     not null
        primary key,
    balance float default 0 not null,
    hold    float default 0 not null
)
go

INSERT INTO Prog_DB.dbo.Wallet (id, balance, hold) VALUES (N'W001', 500, 50);
INSERT INTO Prog_DB.dbo.Wallet (id, balance, hold) VALUES (N'W002', 1000, 100);
INSERT INTO Prog_DB.dbo.Wallet (id, balance, hold) VALUES (N'W003', 250, 0);
INSERT INTO Prog_DB.dbo.Wallet (id, balance, hold) VALUES (N'W005', 1000, 0);
INSERT INTO Prog_DB.dbo.Wallet (id, balance, hold) VALUES (N'W006', 1000, 0);
