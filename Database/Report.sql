create table dbo.Report
(
    id        int identity
        primary key,
    reason    nvarchar(max)              not null,
    date      datetime default getdate() not null,
    status_id int                        not null
        constraint FK_Report_Status
            references dbo.Status,
    mentor_id varchar(50)                not null
        constraint FK_Report_Mentor
            references dbo.Mentor,
    mentee_id varchar(50)                not null
        constraint FK_Report_Mentee
            references dbo.Mentee,
    admin_id  varchar(50)
        constraint FK_Report_Admin
            references dbo.Account
)
go

INSERT INTO Prog_DB.dbo.Report (id, reason, date, status_id, mentor_id, mentee_id, admin_id) VALUES (1, N'Mentor was late to session', N'2025-03-01 03:08:29.007', 2, N'A002', N'A003', null);
INSERT INTO Prog_DB.dbo.Report (id, reason, date, status_id, mentor_id, mentee_id, admin_id) VALUES (2, N'Test report', N'2025-03-01 03:37:45.280', 1, N'A002', N'A003', N'A001');
