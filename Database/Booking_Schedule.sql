create table dbo.Booking_Schedule
(
    id          int identity
        primary key,
    booking_id  int           not null
        constraint FK_BookingSchedule_Booking
            references dbo.Booking,
    schedule_id int           not null
        constraint FK_BookingSchedule_Schedule
            references dbo.Schedule,
    isAtend     bit default 0 not null,
    status_id   int           not null
        constraint FK_BookingSchedule_Status
            references dbo.Status
)
go

SET IDENTITY_INSERT FHub.dbo.Booking_Schedule ON;

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Booking_Schedule WHERE id = 1)
    INSERT INTO FHub.dbo.Booking_Schedule (id, booking_id, schedule_id, isAtend, status_id)
    VALUES (1, 1, 1, 1, 3);

IF NOT EXISTS (SELECT 1 FROM FHub.dbo.Booking_Schedule WHERE id = 2)
    INSERT INTO FHub.dbo.Booking_Schedule (id, booking_id, schedule_id, isAtend, status_id)
    VALUES (2, 1, 1, 1, 3);

SET IDENTITY_INSERT FHub.dbo.Booking_Schedule OFF;