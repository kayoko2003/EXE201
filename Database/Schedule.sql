create table dbo.Schedule
(
    id                 int identity
        primary key,
    date               date not null,
    slot_id            int  not null
        constraint FK_Schedule_Slot
            references dbo.Slot,
    mentor_schedule_id int  not null
        constraint FK_Schedule_MentorSchedule
            references dbo.Mentor_Schedule
)
go

INSERT INTO Prog_DB.dbo.Schedule (id, date, slot_id, mentor_schedule_id) VALUES (1, N'2025-03-05', 1, 1);
INSERT INTO Prog_DB.dbo.Schedule (id, date, slot_id, mentor_schedule_id) VALUES (2, N'2025-03-05', 1, 1);
