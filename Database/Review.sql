create table dbo.Review
(
    id        int identity
        primary key,
    comment   nvarchar(max)              not null,
    date      datetime default getdate() not null,
    rate      int
        check ([rate] >= 1 AND [rate] <= 5),
    mentor_id varchar(50)                not null
        constraint FK_Review_Mentor
            references dbo.Mentor,
    mentee_id varchar(50)                not null
        constraint FK_Review_Mentee
            references dbo.Mentee
)
go

SET IDENTITY_INSERT FHub.dbo.Review ON;

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Review WHERE id = 1)
    INSERT INTO FHub.dbo.Review (id, comment, date, rate, mentor_id, mentee_id)
    VALUES (1, N'Great session!', N'2025-03-01 03:08:29.030', 5, N'A002', N'A003');

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Review WHERE id = 2)
    INSERT INTO FHub.dbo.Review (id, comment, date, rate, mentor_id, mentee_id)
    VALUES (2, N'Great session!', N'2025-03-01 03:37:45.307', 5, N'A002', N'A003');

SET IDENTITY_INSERT FHub.dbo.Review OFF;
