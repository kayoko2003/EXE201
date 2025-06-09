create table dbo.Booking
(
    id             int identity
        primary key,
    mentee_id      varchar(50)                      not null
        constraint FK_Booking_Mentee
            references dbo.Mentee,
    mentor_id      varchar(50)                      not null
        constraint FK_Booking_Mentor
            references dbo.Mentor,
    level_skill_id int                              not null
        constraint FK_Booking_LevelSkill
            references dbo.Level_Skill,
    status_id      int                              not null
        constraint FK_Booking_Status
            references dbo.Status,
    create_date    datetime       default getdate() not null,
    from_date      date                             not null,
    to_date        date                             not null,
    total_slot     int                              not null,
    amount         decimal(10, 2) default 0.00      not null,
    description    nvarchar(500)
)
go

INSERT INTO Prog_DB.dbo.Booking (id, mentee_id, mentor_id, level_skill_id, status_id, create_date, from_date, to_date, total_slot, amount, description) VALUES (1, N'A003', N'A002', 1, 3, N'2025-03-01 03:08:28.960', N'2025-03-10', N'2025-03-10', 1, 100.00, null);
INSERT INTO Prog_DB.dbo.Booking (id, mentee_id, mentor_id, level_skill_id, status_id, create_date, from_date, to_date, total_slot, amount, description) VALUES (2, N'A003', N'A002', 1, 3, N'2025-03-01 03:37:27.320', N'2025-03-10', N'2025-03-10', 1, 100.00, null);
