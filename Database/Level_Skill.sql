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

SET IDENTITY_INSERT FHub.dbo.Level_Skill ON;

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Level_Skill WHERE id = 1)
    INSERT INTO FHub.dbo.Level_Skill (id, skill_id, level_id, description, status_id)
    VALUES (1, 1, 1, N'Basic level Java', 7);

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Level_Skill WHERE id = 2)
    INSERT INTO FHub.dbo.Level_Skill (id, skill_id, level_id, description, status_id)
    VALUES (2, 2, 1, N'Basic design principles', 7);

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Level_Skill WHERE id = 3)
    INSERT INTO FHub.dbo.Level_Skill (id, skill_id, level_id, description, status_id)
    VALUES (3, 3, 3, N'Expert in digital marketing strategies', 7);

SET IDENTITY_INSERT FHub.dbo.Level_Skill OFF;
