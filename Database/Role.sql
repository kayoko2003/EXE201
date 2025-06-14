create table dbo.Role
(
    id   int identity
        primary key,
    name nvarchar(100) not null
        unique
)
go

SET IDENTITY_INSERT dbo.Role ON;

INSERT INTO dbo.Role (id, name) VALUES (1, N'Admin');
INSERT INTO dbo.Role (id, name) VALUES (3, N'Mentee');
INSERT INTO dbo.Role (id, name) VALUES (2, N'Mentor');

SET IDENTITY_INSERT dbo.Role OFF;

