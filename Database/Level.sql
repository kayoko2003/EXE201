create table dbo.Level
(
    id   int identity
        primary key,
    type varchar(50) not null
)
go

SET IDENTITY_INSERT FHub.dbo.Level ON;
INSERT INTO FHub.dbo.Level (id, type) VALUES (1, N'Beginner');
INSERT INTO FHub.dbo.Level (id, type) VALUES (2, N'Intermediate');
INSERT INTO FHub.dbo.Level (id, type) VALUES (3, N'Advanced');
SET IDENTITY_INSERT FHub.dbo.Level OFF;
