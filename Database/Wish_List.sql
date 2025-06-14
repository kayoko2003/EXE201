create table dbo.Wish_List
(
    id        int identity
        primary key,
    mentor_id varchar(50)                not null
        constraint FK_WishList_Mentor
            references dbo.Mentor,
    mentee_id varchar(50)                not null
        constraint FK_WishList_Mentee
            references dbo.Mentee,
    status_id int                        not null
        constraint FK_WishList_Status
            references dbo.Status,
    date      datetime default getdate() not null
)
go

SET IDENTITY_INSERT FHub.dbo.Wish_List ON;

INSERT INTO FHub.dbo.Wish_List (id, mentor_id, mentee_id, status_id, date)
SELECT 1, N'A002', N'A003', 12, N'2025-03-17 09:52:52.030'
WHERE NOT EXISTS (
    SELECT 1 FROM FHub.dbo.Wish_List WHERE id = 1
);

INSERT INTO FHub.dbo.Wish_List (id, mentor_id, mentee_id, status_id, date)
SELECT 2, N'A002', N'A003', 12, N'2025-03-17 09:52:52.030'
WHERE NOT EXISTS (
    SELECT 1 FROM FHub.dbo.Wish_List WHERE id = 2
);

SET IDENTITY_INSERT FHub.dbo.Wish_List OFF;