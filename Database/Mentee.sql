create table dbo.Mentee
(
    account_id varchar(50) not null
        primary key
        constraint FK_Mentee_Account
            references dbo.Account
)
go

INSERT INTO Prog_DB.dbo.Mentee (account_id) VALUES (N'A003');
