USE [Votes_db]
GO
SET IDENTITY_INSERT [dbo].[Candidates] ON 

INSERT [dbo].[Candidates] ([Id], [Name]) VALUES (1, N'A')
INSERT [dbo].[Candidates] ([Id], [Name]) VALUES (2, N'B')
INSERT [dbo].[Candidates] ([Id], [Name]) VALUES (3, N'C')
INSERT [dbo].[Candidates] ([Id], [Name]) VALUES (4, N'D')
SET IDENTITY_INSERT [dbo].[Candidates] OFF
GO
SET IDENTITY_INSERT [dbo].[Voters] ON 

INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (1, N'Test', 1)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (2, N'Asd', 1)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (3, N'Trak', 1)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (4, N'Lol', 1)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (5, N'Pep', 1)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (6, N'Ron', 2)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (7, N'Harry', 2)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (8, N'Tralla', 2)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (9, N'Lok', 3)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (10, N'Por', 3)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (12, N'wer', 3)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (13, N'sder', 3)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (14, N'sdter', 3)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (15, N'rty', 4)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (16, N'sdtwe', 4)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (17, N'tfrt', 4)
INSERT [dbo].[Voters] ([Id], [Name], [Group]) VALUES (18, N'Rsf', 4)
SET IDENTITY_INSERT [dbo].[Voters] OFF
GO
SET IDENTITY_INSERT [dbo].[Votes] ON 

INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (1, 1, 1)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (2, 1, 2)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (3, 1, 3)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (4, 4, 4)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (5, 3, 5)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (6, 1, 6)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (8, 1, 7)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (9, 4, 8)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (10, 2, 9)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (11, 2, 10)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (14, 3, 12)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (15, 4, 13)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (17, 1, 14)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (18, 3, 15)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (19, 3, 16)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (20, 4, 17)
INSERT [dbo].[Votes] ([Id], [CandidateId], [VoterId]) VALUES (21, 2, 18)
SET IDENTITY_INSERT [dbo].[Votes] OFF
GO
