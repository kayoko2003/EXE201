create table dbo.Status
(
    id   int           not null
        primary key,
    type nvarchar(100) not null
)
go

INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (0, N'CANCEL');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (1, N'PROCESSING');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (2, N'REJECT');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (3, N'DONE');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (4, N'CREATE');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (5, N'EDIT');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (6, N'BAN');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (7, N'ACTIVE');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (8, N'INACTIVE');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (9, N'BOOKED');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (10, N'FREE');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (11, N'ACCEPTED');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (12, N'CANCEL');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (13, N'PAID');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (14, N'REVIEWED');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (15, N'WAITCANCEL');
INSERT INTO Prog_DB.dbo.Status (id, type) VALUES (16, N'DRAFT');
