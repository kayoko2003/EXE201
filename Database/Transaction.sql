create table dbo.[Transaction]
(
    id              int identity
        primary key,
    date            datetime default getdate() not null,
    amount          float                      not null,
    type_id         int                        not null
        constraint FK_Transaction_Type
            references dbo.TypeTransaction,
    wallet_id       varchar(50)                not null
        constraint FK_Transaction_Wallet
            references dbo.Wallet,
    wallet_opposite varchar(50)                not null
        constraint FK_Transaction_WalletOpposite
            references dbo.Wallet,
    fee             float    default 0         not null
)
go

INSERT INTO Prog_DB.dbo.[Transaction] (id, date, amount, type_id, wallet_id, wallet_opposite, fee) VALUES (1, N'2025-03-01 03:08:29.103', 200, 3, N'W001', N'W002', 5);
INSERT INTO Prog_DB.dbo.[Transaction] (id, date, amount, type_id, wallet_id, wallet_opposite, fee) VALUES (2, N'2025-03-01 03:38:15.027', 100, 1, N'W001', N'W002', 0);
