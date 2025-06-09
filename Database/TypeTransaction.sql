create table dbo.TypeTransaction
(
    id   int identity
        primary key,
    name varchar(50) not null
)
go

INSERT INTO Prog_DB.dbo.TypeTransaction (id, name) VALUES (1, N'Deposit');
INSERT INTO Prog_DB.dbo.TypeTransaction (id, name) VALUES (2, N'Withdrawal');
INSERT INTO Prog_DB.dbo.TypeTransaction (id, name) VALUES (3, N'Transfer');
