create table dbo.Mentor_Schedule
(
    id         int identity
        primary key,
    mentor_id  varchar(50) not null
        constraint FK_MentorSchedule_Mentor
            references dbo.Mentor,
    start_date date        not null,
    end_date   date        not null,
    message    nvarchar(max)
)
go

SET IDENTITY_INSERT FHub.dbo.Mentor_Schedule ON;

IF NOT EXISTS (
    SELECT 1 FROM FHub.dbo.Mentor_Schedule WHERE id = 1
)
    INSERT INTO FHub.dbo.Mentor_Schedule (id, mentor_id, start_date, end_date, message)
    VALUES (1, N'A002', N'2025-03-01', N'2025-03-31', NULL);

SET IDENTITY_INSERT FHub.dbo.Mentor_Schedule OFF;
