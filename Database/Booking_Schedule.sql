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

INSERT INTO Prog_DB.dbo.Booking_Schedule (id, booking_id, schedule_id, isAtend, status_id) VALUES (1, 1, 1, 1, 3);
INSERT INTO Prog_DB.dbo.Booking_Schedule (id, booking_id, schedule_id, isAtend, status_id) VALUES (2, 1, 1, 1, 3);
