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
SET IDENTITY_INSERT [dbo].[BordaScores] ON 

INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (1, 1, 1, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (2, 2, 1, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (3, 3, 1, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (4, 4, 1, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (6, 1, 2, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (8, 2, 2, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (9, 3, 2, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (10, 4, 2, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (11, 1, 3, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (12, 2, 3, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (13, 3, 3, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (14, 4, 3, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (18, 1, 4, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (20, 2, 4, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (21, 3, 4, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (22, 4, 4, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (23, 1, 5, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (24, 2, 5, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (25, 3, 5, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (26, 4, 5, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (27, 1, 6, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (28, 2, 6, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (29, 3, 6, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (30, 4, 6, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (31, 1, 7, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (32, 2, 7, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (33, 3, 7, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (34, 4, 7, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (35, 1, 8, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (36, 2, 8, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (37, 3, 8, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (38, 4, 8, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (39, 1, 9, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (40, 2, 9, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (41, 3, 9, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (42, 4, 9, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (43, 1, 10, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (44, 2, 10, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (45, 3, 10, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (46, 4, 10, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (48, 1, 12, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (49, 2, 12, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (50, 3, 12, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (52, 4, 12, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (53, 1, 13, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (54, 2, 13, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (55, 3, 13, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (56, 4, 13, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (57, 1, 14, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (58, 2, 14, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (59, 3, 14, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (60, 4, 14, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (61, 1, 15, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (62, 2, 15, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (63, 3, 15, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (64, 4, 15, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (65, 1, 16, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (66, 2, 16, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (67, 3, 16, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (68, 4, 16, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (70, 1, 17, 3)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (71, 2, 17, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (72, 3, 17, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (73, 4, 17, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (74, 1, 18, 2)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (75, 2, 18, 1)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (76, 3, 18, 4)
INSERT [dbo].[BordaScores] ([Id], [CandidateId], [VoterId], [Score]) VALUES (77, 4, 18, 3)
SET IDENTITY_INSERT [dbo].[BordaScores] OFF
GO
