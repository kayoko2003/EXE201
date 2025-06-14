create table dbo.Mentor_Level_Skill
(
    id             int identity
        primary key,
    mentor_id      varchar(50) not null
        constraint FK_MentorLevelSkill_Mentor
            references dbo.Mentor,
    skill_level_id int         not null
        constraint FK_MentorLevelSkill_LevelSkill
            references dbo.Level_Skill
)
go

SET IDENTITY_INSERT FHub.dbo.Mentor_Level_Skill ON;

IF NOT EXISTS (
    SELECT 1 FROM FHub.dbo.Mentor_Level_Skill WHERE id = 1
)
    INSERT INTO FHub.dbo.Mentor_Level_Skill (id, mentor_id, skill_level_id)
    VALUES (1, N'A002', 1);

SET IDENTITY_INSERT FHub.dbo.Mentor_Level_Skill OFF;

