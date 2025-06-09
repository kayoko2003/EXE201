create table dbo.Slot
(
    id         int identity
        primary key,
    time_start time not null,
    time_end   time not null
)
go

INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (1, N'08:00:00.0000000', N'09:00:00.0000000');
INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (2, N'09:00:00.0000000', N'10:00:00.0000000');
INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (3, N'10:00:00.0000000', N'11:00:00.0000000');
INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (4, N'08:00:00.0000000', N'09:00:00.0000000');
INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (5, N'09:00:00.0000000', N'10:00:00.0000000');
INSERT INTO Prog_DB.dbo.Slot (id, time_start, time_end) VALUES (6, N'10:00:00.0000000', N'11:00:00.0000000');
