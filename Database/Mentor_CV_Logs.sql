create table dbo.Mentor_CV_Logs
(
    account_id     varchar(50) not null
        primary key
        constraint FK_MentorCVLogs_Account
            references dbo.Account,
    profile_detail nvarchar(max),
    education      nvarchar(max),
    experience     nvarchar(max),
    price          int         not null,
    status_id      int         not null
        constraint FK_MentorCVLogs_Status
            references dbo.Status
)
go

INSERT INTO FHub.dbo.Mentor_CV_Logs (account_id, profile_detail, education, experience, price, status_id) VALUES (N'A002', N'Experienced Java developer and mentor.', N'Master''s in Computer Science', N'5 years of industry experience', 100, 2);
