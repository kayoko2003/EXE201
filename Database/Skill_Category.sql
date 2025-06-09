create table dbo.Skill_Category
(
    id   int identity
        primary key,
    name varchar(255) not null
        unique
)
go

INSERT INTO Prog_DB.dbo.Skill_Category (id, name) VALUES (2, N'Design');
INSERT INTO Prog_DB.dbo.Skill_Category (id, name) VALUES (3, N'Marketing');
INSERT INTO Prog_DB.dbo.Skill_Category (id, name) VALUES (1, N'Programming');
