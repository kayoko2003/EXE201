create table dbo.Role
(
    id   int identity
        primary key,
    name nvarchar(100) not null
        unique
)
go

INSERT INTO Prog_DB.dbo.Role (id, name) VALUES (1, N'Admin');
INSERT INTO Prog_DB.dbo.Role (id, name) VALUES (3, N'Mentee');
INSERT INTO Prog_DB.dbo.Role (id, name) VALUES (2, N'Mentor');
