create table dbo.Level
(
    id   int identity
        primary key,
    type varchar(50) not null
)
go

INSERT INTO Prog_DB.dbo.Level (id, type) VALUES (1, N'Beginner');
INSERT INTO Prog_DB.dbo.Level (id, type) VALUES (2, N'Intermediate');
INSERT INTO Prog_DB.dbo.Level (id, type) VALUES (3, N'Advanced');
