create table dbo.TypeTransaction
(
    id   int identity
        primary key,
    name varchar(50) not null
)
go

SET IDENTITY_INSERT FHub.dbo.TypeTransaction ON;

INSERT INTO FHub.dbo.TypeTransaction (id, name) VALUES (1, N'Deposit');
INSERT INTO FHub.dbo.TypeTransaction (id, name) VALUES (2, N'Withdrawal');
INSERT INTO FHub.dbo.TypeTransaction (id, name) VALUES (3, N'Transfer');

SET IDENTITY_INSERT FHub.dbo.TypeTransaction OFF;

