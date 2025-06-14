create table dbo.Skill
(
    id       int identity
        primary key,
    name     varchar(255) not null,
    cate_id  int          not null
        constraint FK_Skill_Category
            references dbo.Skill_Category,
    src_icon varchar(255)
)
go

SET IDENTITY_INSERT FHub.dbo.Skill ON;

INSERT INTO FHub.dbo.Skill (id, name, cate_id, src_icon)
VALUES (1, N'Java Programming', 1, N'img/image_skill/java.png');

INSERT INTO FHub.dbo.Skill (id, name, cate_id, src_icon)
VALUES (2, N'Graphic Design', 2, N'img/image_skill/graphic_design.jfif');

INSERT INTO FHub.dbo.Skill (id, name, cate_id, src_icon)
VALUES (3, N'Digital Marketing', 3, N'img/image_skill/marketing.png');

SET IDENTITY_INSERT FHub.dbo.Skill OFF;
