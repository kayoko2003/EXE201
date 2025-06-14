create table dbo.Mentor
(
    account_id     varchar(50) not null
        primary key
        constraint FK_Mentor_Account
            references dbo.Account,
    experience     text,
    rating         float,
    price          int,
    education      nvarchar(max),
    profile_detail nvarchar(max)
)
go

INSERT INTO FHub.dbo.Mentor (account_id, experience, rating, price, education, profile_detail) VALUES (N'A002', N'5 years of industry experience', 4.5, 100, N'Master''s in Computer Science', N'Experienced Java developer and mentor.');
INSERT INTO FHub.dbo.Mentor (account_id, experience, rating, price, education, profile_detail) VALUES (N'A005', N'5 years teaching programming', 4.5, 100, N'Thạc sĩ Khoa học Máy tính - Đại học ABC', N'Kinh nghiệm 5 năm giảng dạy Java và Spring Boot');
INSERT INTO FHub.dbo.Mentor (account_id, experience, rating, price, education, profile_detail) VALUES (N'A006', N'5 years teaching programming', 4.5, 100, N'Thạc sĩ Khoa học Máy tính - Đại học ABC', N'Kinh nghiệm 5 năm giảng dạy Java và Spring Boot');
