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

SET IDENTITY_INSERT FHub.dbo.Schedule ON;

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Schedule WHERE id = 1)
    INSERT INTO FHub.dbo.Schedule (id, date, slot_id, mentor_schedule_id)
    VALUES (1, N'2025-03-05', 1, 1);

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Schedule WHERE id = 2)
    INSERT INTO FHub.dbo.Schedule (id, date, slot_id, mentor_schedule_id)
    VALUES (2, N'2025-03-05', 1, 1);

SET IDENTITY_INSERT FHub.dbo.Schedule OFF;