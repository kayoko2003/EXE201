create table dbo.Schedule_Logs
(
    id                 int identity
        primary key,
    date               date        not null,
    slot_id            int         not null
        constraint FK_ScheduleLogs_Slot
            references dbo.Slot,
    mentor_schedule_id int         not null
        constraint FK_ScheduleLogs_MentorSchedule
            references dbo.Mentor_Schedule,
    mentor_id          varchar(50) not null
        constraint FK_ScheduleLogs_Mentor
            references dbo.Mentor,
    status_id          int         not null
        constraint FK_ScheduleLogs_Status
            references dbo.Status
)
go

INSERT INTO Prog_DB.dbo.Schedule_Logs (id, date, slot_id, mentor_schedule_id, mentor_id, status_id) VALUES (1, N'2025-03-05', 1, 1, N'A002', 3);
