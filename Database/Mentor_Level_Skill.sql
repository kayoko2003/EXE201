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

INSERT INTO Prog_DB.dbo.Mentor_Level_Skill (id, mentor_id, skill_level_id) VALUES (1, N'A002', 1);
