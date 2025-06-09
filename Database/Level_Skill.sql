create table dbo.Level_Skill
(
    id          int identity
        primary key,
    skill_id    int not null
        constraint FK_LevelSkill_Skill
            references dbo.Skill,
    level_id    int not null
        constraint FK_LevelSkill_Level
            references dbo.Level,
    description nvarchar(max),
    status_id   int not null
        constraint FK_LevelSkill_Status
            references dbo.Status
)
go

INSERT INTO Prog_DB.dbo.Level_Skill (id, skill_id, level_id, description, status_id) VALUES (1, 1, 1, N'Basic level Java', 7);
INSERT INTO Prog_DB.dbo.Level_Skill (id, skill_id, level_id, description, status_id) VALUES (2, 2, 1, N'Basic design principles', 7);
INSERT INTO Prog_DB.dbo.Level_Skill (id, skill_id, level_id, description, status_id) VALUES (3, 3, 3, N'Expert in digital marketing strategies', 7);
