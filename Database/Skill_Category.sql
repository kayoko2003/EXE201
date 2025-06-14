create table dbo.Skill_Category
(
    id   int identity
        primary key,
    name varchar(255) not null
        unique
)
go

SET IDENTITY_INSERT FHub.dbo.Skill_Category ON;

INSERT INTO FHub.dbo.Skill_Category (id, name) VALUES (2, N'Design');
INSERT INTO FHub.dbo.Skill_Category (id, name) VALUES (3, N'Marketing');
INSERT INTO FHub.dbo.Skill_Category (id, name) VALUES (1, N'Programming');

SET IDENTITY_INSERT FHub.dbo.Skill_Category OFF;

