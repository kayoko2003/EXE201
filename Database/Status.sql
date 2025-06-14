create table dbo.Status
(
    id   int           not null
        primary key,
    type nvarchar(100) not null
)
go


INSERT INTO FHub.dbo.Status (id, type) VALUES (0, N'CANCEL');
INSERT INTO FHub.dbo.Status (id, type) VALUES (1, N'PROCESSING');
INSERT INTO FHub.dbo.Status (id, type) VALUES (2, N'REJECT');
INSERT INTO FHub.dbo.Status (id, type) VALUES (3, N'DONE');
INSERT INTO FHub.dbo.Status (id, type) VALUES (4, N'CREATE');
INSERT INTO FHub.dbo.Status (id, type) VALUES (5, N'EDIT');
INSERT INTO FHub.dbo.Status (id, type) VALUES (6, N'BAN');
INSERT INTO FHub.dbo.Status (id, type) VALUES (7, N'ACTIVE');
INSERT INTO FHub.dbo.Status (id, type) VALUES (8, N'INACTIVE');
INSERT INTO FHub.dbo.Status (id, type) VALUES (9, N'BOOKED');
INSERT INTO FHub.dbo.Status (id, type) VALUES (10, N'FREE');
INSERT INTO FHub.dbo.Status (id, type) VALUES (11, N'ACCEPTED');
INSERT INTO FHub.dbo.Status (id, type) VALUES (12, N'CANCEL');
INSERT INTO FHub.dbo.Status (id, type) VALUES (13, N'PAID');
INSERT INTO FHub.dbo.Status (id, type) VALUES (14, N'REVIEWED');
INSERT INTO FHub.dbo.Status (id, type) VALUES (15, N'WAITCANCEL');
INSERT INTO FHub.dbo.Status (id, type) VALUES (16, N'DRAFT');


