create table dbo.Account
(
    id        varchar(50)   not null
        primary key,
    name      nvarchar(255) not null,
    username  varchar(255)  not null
        unique,
    password  varchar(255)  not null,
    dob       date,
    phone     varchar(15),
    gender    int,
    address   nvarchar(255),
    mail      varchar(255)
        unique,
    avatar    varchar(255),
    role_id   int           not null
        constraint FK_Account_Role
            references dbo.Role,
    wallet_id varchar(50)
        constraint FK_Account_Wallet
            references dbo.Wallet,
    status    int default 1 not null
)
go

INSERT INTO Prog_DB.dbo.Account (id, name, username, password, dob, phone, gender, address, mail, avatar, role_id, wallet_id, status) VALUES (N'A001', N'Alice Admin', N'aliceadmin', N'password123', N'1980-01-01', N'1234567890', 1, N'Admin Address', N'alice@admin.com', N'img/image_user/teacher_avatar.jpg', 3, N'W001', 7);
INSERT INTO Prog_DB.dbo.Account (id, name, username, password, dob, phone, gender, address, mail, avatar, role_id, wallet_id, status) VALUES (N'A002', N'Bob Mentor', N'bobmentor', N'password456', N'1985-05-15', N'0987654321', 1, N'Mentor Address', N'bob@mentor.com', N'img/image_user/teacher_avatar.jpg', 2, N'W002', 7);
INSERT INTO Prog_DB.dbo.Account (id, name, username, password, dob, phone, gender, address, mail, avatar, role_id, wallet_id, status) VALUES (N'A003', N'Charlie Mentee', N'charliementee', N'password789', N'1990-10-20', N'1122334455', 1, N'Mentee Address', N'charlie@mentee.com', N'img/image_user/teacher_avatar.jpg', 1, N'W003', 7);
INSERT INTO Prog_DB.dbo.Account (id, name, username, password, dob, phone, gender, address, mail, avatar, role_id, wallet_id, status) VALUES (N'A005', N'The Mentor', N'thementor', N'123', N'1985-05-15', N'0987654321', 1, N'Mentor Address', N'the@mentor.com', N'img/image_user/teacher_avatar.jpg', 2, N'W005', 7);
INSERT INTO Prog_DB.dbo.Account (id, name, username, password, dob, phone, gender, address, mail, avatar, role_id, wallet_id, status) VALUES (N'A006', N'Ngoc Mentor', N'ngocmentor', N'12345678', N'1985-05-15', N'0987654321', 1, N'Mentor Address', N'ngoc@mentor.com', N'img/image_user/teacher_avatar.jpg', 2, N'W006', 7);
